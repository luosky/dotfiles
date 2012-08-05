require 'fileutils'

#configs
$dotfiles_dir = "~/.dotfiles"
$dotfiles_backup_dir = "~/.dotfiles-backup"

# files and folders which shouldn't be link 
$exclude = [
  '.',
  '..',
  '.git',
  '.rvmrc',
  'Rakefile',
  'README.md',
  'other_configs'
]

# dotfiles
def entries
  @files ||= Dir.entries(File.expand_path($dotfiles_dir)) - $exclude
end


desc 'Backup and link dotfiles'
task :install => [:backup, :link]

desc 'Backup exsiting dotfiles.'
task :backup do
  dir = FileUtils.mkdir_p(File.expand_path(File.join($dotfiles_backup_dir, Time.now.to_s)))
  entries.each do |file|
    orig = File.expand_path("~/#{file}")
    FileUtils.cp_r orig, File.join(dir, file), :verbose => true if File.exists? orig
  end
end

desc 'link dotfiles to home dir'
task :link do
  entries.each do |file|
    orig_file = "#{$dotfiles_dir}/#{file}"
    target_file = "~/#{file}"
    %x(rm -rf #{target_file})
    %x(ln -s #{orig_file} #{target_file})
  end
end


