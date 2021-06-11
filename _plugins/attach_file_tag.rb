ATTACHED_FILES_DIRECTORY = "/attached_files"
MD_EXTENSION = ".md"
MARKDOWN_EXTENSION = ".markdown"
PDF_EXTENSION = ".pdf"
SLIDES_PDF_DIRECTORY = "slides_pdf"

module Jekyll
    class AttachFileTag < Liquid::Tag
        def initialize(tag_name, input, tokens)
            super
            @input = input
        end

        def render(context)
            url = context.registers[:site].config['url']
            baseurl = context.registers[:site].config['baseurl']

            # Attempt to parse the JSON if any is passed in
            title = ""
            file_name = ""
            begin
                if( !@input.nil? && !@input.empty? )
                    jdata = JSON.parse(@input)
                    file_name = jdata["file_name"].strip
                    if( jdata.key?("title") )
                        title = jdata["title"].strip
                    else
                        title = file_name
                    end
                end
            rescue
            end

            if (file_name.include? MD_EXTENSION) || (file_name.include? MARKDOWN_EXTENSION)
                file_name_no_extension = file_name.slice(0..(file_name.index('.') - 1))
                file_name_no_folder = file_name_no_extension.partition('/').last
                file_name =  SLIDES_PDF_DIRECTORY + '/' + file_name_no_folder + PDF_EXTENSION
            end

            full_path = File.join baseurl, ATTACHED_FILES_DIRECTORY, '/', file_name

            "[#{title}](#{full_path})"
        end
    end
end

Liquid::Template.register_tag('attach_file', Jekyll::AttachFileTag)