```

Original version by Flemming Frandsen: https://gitlab.com/dren.dk/mso5k-la-pod

MMMMMMMM               MMMMMMMM   SSSSSSSSSSSSSSS      OOOOOOOOO     555555555555555555 kkkkkkkk                            LLLLLLLLLLL                            AAA
M:::::::M             M:::::::M SS:::::::::::::::S   OO:::::::::OO   5::::::::::::::::5 k::::::k                            L:::::::::L                           A:::A
M::::::::M           M::::::::MS:::::SSSSSS::::::S OO:::::::::::::OO 5::::::::::::::::5 k::::::k                            L:::::::::L                          A:::::A
M:::::::::M         M:::::::::MS:::::S     SSSSSSSO:::::::OOO:::::::O5:::::555555555555 k::::::k                            LL:::::::LL                         A:::::::A
M::::::::::M       M::::::::::MS:::::S            O::::::O   O::::::O5:::::5             k:::::k    kkkkkkk                   L:::::L                          A:::::::::A
M:::::::::::M     M:::::::::::MS:::::S            O:::::O     O:::::O5:::::5             k:::::k   k:::::k                    L:::::L                         A:::::A:::::A
M:::::::M::::M   M::::M:::::::M S::::SSSS         O:::::O     O:::::O5:::::5555555555    k:::::k  k:::::k                     L:::::L                        A:::::A A:::::A
M::::::M M::::M M::::M M::::::M  SS::::::SSSSS    O:::::O     O:::::O5:::::::::::::::5   k:::::k k:::::k    ---------------   L:::::L                       A:::::A   A:::::A
M::::::M  M::::M::::M  M::::::M    SSS::::::::SS  O:::::O     O:::::O555555555555:::::5  k::::::k:::::k     -:::::::::::::-   L:::::L                      A:::::A     A:::::A
M::::::M   M:::::::M   M::::::M       SSSSSS::::S O:::::O     O:::::O            5:::::5 k:::::::::::k      ---------------   L:::::L                     A:::::AAAAAAAAA:::::A
M::::::M    M:::::M    M::::::M            S:::::SO:::::O     O:::::O            5:::::5 k:::::::::::k                        L:::::L                    A:::::::::::::::::::::A
M::::::M     MMMMM     M::::::M            S:::::SO::::::O   O::::::O5555555     5:::::5 k::::::k:::::k                       L:::::L         LLLLLL    A:::::AAAAAAAAAAAAA:::::A
M::::::M               M::::::MSSSSSSS     S:::::SO:::::::OOO:::::::O5::::::55555::::::5k::::::k k:::::k                    LL:::::::LLLLLLLLL:::::L   A:::::A             A:::::A
M::::::M               M::::::MS::::::SSSSSS:::::S OO:::::::::::::OO  55:::::::::::::55 k::::::k  k:::::k                   L::::::::::::::::::::::L  A:::::A               A:::::A
M::::::M               M::::::MS:::::::::::::::SS    OO:::::::::OO      55:::::::::55   k::::::k   k:::::k                  L::::::::::::::::::::::L A:::::A                 A:::::A
MMMMMMMM               MMMMMMMM SSSSSSSSSSSSSSS        OOOOOOOOO          555555555     kkkkkkkk    kkkkkkk                 LLLLLLLLLLLLLLLLLLLLLLLLAAAAAAA                   AAAAAAA
```

This is a reimplementation of the Logic Analyzer pod for the Rigol MSO5000 scopes.

The scopes all come with the ability to accept a logic analyzer, all that's needed is a probe, this project is the implementation of the probe.

The schematic and PCB is in kicad 5 format.


# Sub-projects

There are a number of different projects each in its own subdir:

## lmh7324-16ch

* All 16 channels on a single board
* Uses 4x LMH7324 comparators
* Shows threshold voltage of each 8ch bank

## lmh7324-8ch

* 8 channel frontend pod
* On a 4 layer board
* With lmh7324 comparators
* And a simple volt-meter that shows the threshold voltage.

## breakout
* Board for converting the 2x25 2.54 mm pitch connector on the scope to two 2x13 pin 1.27 mm pitch connectors.


## panel-2019-03-20

* Panel produced in march.

## voltmeter

The firmware for the micro controller


# Unfinished experiments

## lmh7322
* 16 channel frontend pod
* Pretty close clone of the original
* One-sided load
* On a 4 layer board
* Direct 2x50 2.54mm ribbon connector to the scope
* Status: Done, except for silkscreen


