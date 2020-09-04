# emoji-animation-intensifies

A shell script to make static emojis wiggle. The wiggling conveys intensity, hence the name of the script. Output emoji names typically use the same name as the original emoji with an added suffix "-intensifies". 

## Example

`:heart:`

![heart emoji](https://github.com/georgefrank/emoji-animation-intensifies/raw/master/heart.png) 

`:heart-intensifies:`

![heart-intensifies emoji](https://github.com/georgefrank/emoji-animation-intensifies/raw/master/heart-intensifies.gif) 

## Usage

`./intensify.sh INPUT OUTPUT`
- `INPUT` is the full or relative path to the input file, including extension (typically `.png` or `.jpg`)
- `OUTPUT` is the full or relative path to the output file, including the extension `.gif`

For the above example, the command used was `./intensify.sh heart.png heart-intensifies.gif`

## Requirements

- 'imagemagick' is installed and available in the PATH (on a mac, use 'brew install imagemagick')

## Update

If you download a newer version of ImageMagick, you will likely encounter "Invalid Parameter" issues. This is because the executable is now called `magick.exe` and not `convert.exe`. If you update the command in the shell script locally, this will work without issue.
