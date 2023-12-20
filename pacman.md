# install
pacman -S package_name

# update package info
pacman -Sy

# upgrade everything
pacman -Syu

# remove and leave orphans
pacman -R package_name

# remove and remove orphans
pacman -Rs package_name

# query uninstalled package
pacman -Ss package_name

# query installed package
pacman -Qs package_name
