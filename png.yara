rule png_banker : banker
{
    meta:
        description = "This will print the match png file "
        thread_level = 3
        author = "kevinjone25"
        date = "2022/1/4"
        in_the_wild = true
    strings:
        $png = {89 50 4e 47 0d 0a 1a 0a}
    condition:
        $png
}