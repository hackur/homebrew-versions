cask 'electron-beta' do
  version '1.6.6'
  sha256 'c464773064ff706f02039aafda251f28678943c99bdc5f5a82d553317c14e4c2'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: 'd0f3af25be0d6fa480d1d7f0801f7f7eaca632521f24c5339c767180b133b7a3'
  name 'Electron'
  homepage 'https://electron.atom.io/'

  app 'Electron.app'

  zap delete: [
                '~/Library/Application Support/Electron',
                '~/Library/Caches/Electron',
                '~/Library/Preferences/com.github.electron.helper.plist',
                '~/Library/Preferences/com.github.electron.plist',
              ]
end
