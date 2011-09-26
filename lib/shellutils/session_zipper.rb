require 'zip/zip'
require 'zip/zipfilesystem'

class SessionZipper

  def compress(path)
	  path.sub!(%r[/$],'')
	  archive = File.join(path,File.basename(path))+'.zip'
	  FileUtils.rm archive, :force=>true

	  Zip::ZipFile.open(archive, 'w') do |zipfile|
	    Dir["#{path}/**/{*,.*}"].reject{|f|f==archive}.each do |file|
	      zipfile.add(file.sub(path+'/',''),file)
	    end
	  end
	  archive
	end	
	
end
