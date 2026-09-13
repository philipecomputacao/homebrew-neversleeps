# Cask do neversleeps. Tap: philipecomputacao/neversleeps
#
#   brew trust philipecomputacao/neversleeps
#   brew tap philipecomputacao/neversleeps
#   brew install --cask neversleeps
#
# Atualizado automaticamente pelo publicar.sh do repositorio principal a cada
# release (versao e sha256). Nao edite a mao.
cask "neversleeps" do
  version "1.0.2"
  sha256 "8da76e79dc73b6e08eded0d6953a48feb762169031f4c6e73d13cb64ccdc9ca1"

  url "https://github.com/philipecomputacao/neversleeps/releases/download/v#{version}/neversleeps-#{version}.zip"
  name "neversleeps"
  desc "Keeps the Mac working with the lid closed (menu bar toggle for pmset disablesleep)"
  homepage "https://philipecomputacao.github.io/neversleeps/"

  depends_on macos: :sonoma

  app "neversleeps.app"

  uninstall quit: "me.lpdigital.neversleeps"
  zap trash: "~/Library/Preferences/me.lpdigital.neversleeps.plist"

  caveats <<~EOS
    O app ainda nao e notarizado pela Apple. Na primeira abertura:
    clique com o botao direito em neversleeps.app -> Abrir (uma vez).

    The app is not yet notarized by Apple. On first launch:
    right-click neversleeps.app -> Open (once).
  EOS
end
