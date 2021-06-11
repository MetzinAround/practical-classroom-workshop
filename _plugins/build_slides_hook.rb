SLIDES_DIRECTORY = "attached_files/slides_markdown"
OUTPUT_DIRECTORY = "attached_files/slides_pdf"

Jekyll::Hooks.register :site, :after_init do |page|
    Dir.glob(["#{SLIDES_DIRECTORY}/*.md", "#{SLIDES_DIRECTORY}/*.markdown"]) do |f|
        system("mkdir -p #{OUTPUT_DIRECTORY}")
    
        file_directory, _ = f.split('.', 2)
        file_name = file_directory.sub(SLIDES_DIRECTORY+'/', '')
    
        output = "#{OUTPUT_DIRECTORY}/#{file_name}"
        system("pandoc #{f} -t beamer -o #{output}.pdf")
    end
end