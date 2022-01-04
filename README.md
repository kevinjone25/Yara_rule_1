# Yara_rule_1
Use for check whether the fule is png and jpeg

## usage in Windows
<div>
<a href="https://yara.readthedocs.io/en/v3.7.0/gettingstarted.html#installing-on-windows">Yara Doc</a>
  </div>
  <div>
<a href="https://github.com/VirusTotal/yara/releases">Yara release</a>
</div>

or

```
choco install yara
```

## After you Download

1. unzip your zip in your disk
2. add yara64.exe folder path to System variable

- e.g. My yara64.exe is in D:\yara\
![image](https://user-images.githubusercontent.com/64208218/148002152-7ae639c4-9f1d-4efb-aefe-99a95738f0a3.png)

## Test for Yara

- If you set System variable
```
yara --help
```
- If not

```
./[your yara64.exe path] --help
```

## Use for Png and Jpeg check

```
yara jpeg.yara ./yara_example

yara png.yara ./yara_example
```

## If Png Header broken

It start with ```89 50 4e 47 0d 0a 1a 0a```

## JPEG size

- find ```FF D9``` and count for it offset
- the offset below is ```0x19d48(0x19d48 = 105800```
- so the file size will be ```105800 + 2 byte ```

![image](https://user-images.githubusercontent.com/64208218/148003287-611a656f-b1ff-4955-b236-54d33ba7034b.png)

![image](https://user-images.githubusercontent.com/64208218/148003049-933a8608-eff8-4c75-976f-3eb6d8b60782.png)






