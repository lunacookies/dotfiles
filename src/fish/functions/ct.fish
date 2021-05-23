function ct
    while read
       clear
       cargo test --quiet --lib
    end
end
