#!/usr/bin/env bash
# ==============================================================
# AI BUG BOUNTY SYSTEM — one-command setup
# Copies agents/skills/methodology into ~/.config/opencode,
# renders your personal config, installs helper scripts.
# Your identity is stored ONLY on your machine.
# ==============================================================
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OC_DIR="$HOME/.config/opencode"

echo "==============================================="
echo "   🐉 HYDRA — AI BUG BOUNTY SYSTEM SETUP"
echo "==============================================="

# --- preflight -------------------------------------------------
command -v opencode >/dev/null 2>&1 || {
  echo "[!] 'opencode' not found on PATH."
  echo "    Install it first:  curl -fsSL https://opencode.ai/install | bash"
  read -rp "Continue anyway? [y/N] " yn; [[ "${yn:-n}" =~ ^[Yy]$ ]] || exit 1
}

# --- identity (local only) -------------------------------------
read -rp "Reporter handle / username [YOUR_HANDLE]: " HANDLE
read -rp "Testing email [you@example.com]: " EMAIL
HANDLE="${HANDLE:-YOUR_HANDLE}"
EMAIL="${EMAIL:-you@example.com}"

# --- install config --------------------------------------------
echo "[*] Installing agents, skills, methodology -> $OC_DIR"
mkdir -p "$OC_DIR"
cp -r "$REPO_DIR/agents"    "$OC_DIR/"
cp -r "$REPO_DIR/skills"    "$OC_DIR/"
cp -r "$REPO_DIR/common"    "$OC_DIR/"
cp -r "$REPO_DIR/templates" "$OC_DIR/"

echo "[*] Rendering opencode.jsonc with your identity"
sed -e "s|__HOME__|$HOME|g" \
    -e "s|__HANDLE__|$HANDLE|g" \
    -e "s|__EMAIL__|$EMAIL|g" \
    "$REPO_DIR/opencode.jsonc.template" > "$OC_DIR/opencode.jsonc"

# --- workspace dirs --------------------------------------------
echo "[*] Creating recon workspace"
mkdir -p "$HOME/scripts" \
         "$HOME/recon_reports/companies" \
         "$HOME/recon_reports/verified_findings" \
         "$HOME/recon_reports/rejected_findings" \
         "$HOME/recon_reports/bugbase_reports" \
         "$HOME/recon_reports/plans" \
         "$HOME/recon_reports/docs" \
         "$HOME/payloads"

# --- helper scripts --------------------------------------------
echo "[*] Installing helper scripts -> ~/scripts"
cp "$REPO_DIR/scripts/"* "$HOME/scripts/" 2>/dev/null || true
chmod +x "$HOME/scripts/"*.sh "$HOME/scripts/"*.py 2>/dev/null || true

# --- memory seeds ----------------------------------------------
mkdir -p "$OC_DIR/agent_memory"
for m in hunter verifier reporter plan debug; do
  [ -f "$OC_DIR/agent_memory/$m.md" ] || printf '# %s Agent Memory\n\n## What I Learned\n- Initialized %s\n' "$(echo $m | sed 's/^./\U&/')" "$(date +%F)" > "$OC_DIR/agent_memory/$m.md"
done

echo ""
echo "==============================================="
echo " DONE. Next steps:"
echo "  0. If you just installed opencode:  source ~/.bashrc"
echo "  1. Set an API key for your model provider:"
echo "       export OPENROUTER_API_KEY=sk-or-...   (or NVIDIA_NIM_API_KEY=...)"
echo "  2. Optional tooling:  bash $REPO_DIR/install-tools.sh"
echo "  3. Optional API keys:"
echo "       export VIRUSTOTAL_API_KEY=... URLSCAN_API_KEY=..."
echo "  4. Launch opencode and run:  /hunt example.com"
echo "==============================================="
