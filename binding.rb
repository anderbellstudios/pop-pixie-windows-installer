module WindowsPackager
  def self.package(build)
    destination_dir = File.join(__dir__, 'Pop Pixie')
    FileUtils.rm_rf(destination_dir)
    build.mv(destination_dir)
    system File.join(__dir__, 'build-installer')
    output_path = File.join(__dir__, 'Output', 'Install Pop Pixie.exe')
    raise 'Failed to create Windows installer' unless File.exist?(output_path)
    return output_path
  end
end
