# emoji-animation-intensifies

A shell script to make static emojis wiggle. The wiggling conveys intensity, hence the name of the script. Output emoji names typically use the same name as the original emoji with an added suffix "-intensifies". 

## Usage

`./intensify.sh INPUT OUTPUT`
- `INPUT` is the full or relative path to the input file, including extension (typically `.png` or `.jpg`)
- `OUTPUT` is the full or relative path to the output file, including the extension `.gif`

## Requirements

- 'imagemagick' is installed and available in the PATH (on a mac, use 'brew install imagemagick')
