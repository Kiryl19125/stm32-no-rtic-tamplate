{% if chip-name == "STM32F103C8" %}
MEMORY
{
  /* NOTE 1 K = 1 KiBi = 1024 bytes; memory layout for F103C8T6*/
  FLASH : ORIGIN = 0x08000000, LENGTH = 64K
  RAM : ORIGIN = 0x20000000, LENGTH = 20K
}
{% endif %}

{% if chip-name == "STM32F103C6" %}
MEMORY
{
  /* NOTE 1 K = 1 KiBi = 1024 bytes; memory layout for F103C6T6*/
  FLASH : ORIGIN = 0x08000000, LENGTH = 64K
  RAM : ORIGIN = 0x20000000, LENGTH = 8K
}
{% endif %}
