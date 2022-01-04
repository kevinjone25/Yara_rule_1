rule jpeg_banker : banker
{
    meta:
        description = "This will print the match jpeg file "
        thread_level = 3
        author = "kevinjone25"
        date = "2022/1/4"
        in_the_wild = true
    strings:
        $jpeg = {FF D8 FF}
    condition:
        $jpeg
}