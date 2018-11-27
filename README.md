# ChIP-Seq

This workflow demonstrates ChIP-Seq analysis in *Escherichia coli* by performing peak detection in a treatment sample using MACS. It is a Cuneiform transcription of a [hands-on introduction to ChIP-Seq](http://www.biologie.ens.fr/~mthomas/other/chip-seq-training/) by Morgane Thomas-Chollier which itself is based on a study by [Myers et al. 2013](http://journals.plos.org/plosgenetics/article?id=10.1371/journal.pgen.1003565).

A detailed description can be found on the [Cuneiform website](http://cuneiform-lang.org/examples/2016/04/29/chip-seq/). This cookbook installs all necessary tools, downloads all necessary data, sets up Cuneiform, and places the [workflow](https://github.com/joergen7/chip-seq/blob/master/templates/default/chip-seq.cf.erb) in a predetermined location. The cookbook can be run on any system in a virtual machine. For running the cookbook natively, an Ubuntu 16.04 or higher is required.

Below you find installation instructions for, both, the native and the virtual machine setup.


## Requirements

### Platforms

- Ubuntu

### Chef

- Chef 12.14+

### Cookbooks

- chef-cuneiform
  - chef-rebar3
    -erlang
      - build-essential
      - mingw
      - seven_zip
      - windows
      - yum-epel
      - yum-erlang_solutions

## Recipes

- `chip-seq::default`
- `chip-seq::data`
- `chip-seq::tools`
- `chip-seq::workflow`

## Running the Workflow

If you set up the workflow via `kitchen converge`, log into the machine by typing

    kitchen login
    
Execute the workflow script by entering

    cuneiform -w /opt/data /opt/wf/chip-seq.cfl

## Authors

- Jörgen Brandt ([@joergen7](https://github.com/joergen7/)) [joergen.brandt@onlinehome.de](mailto:joergen.brandt@onlinehome.de)

## License

[Apache 2.0](https://www.apache.org/licenses/LICENSE-2.0.html)