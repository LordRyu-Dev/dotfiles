set -e

cd /usr/share/endeavouros/backgrounds/

sudo mv -f endeavouros-wallpaper.png swapimage.png
sudo mv -f senawallpaper.png endeavouros-wallpaper.png
sudo mv -f senawallpaper_zwei.png senawallpaper.png
sudo mv -f astralsenawallpaper.png senawallpaper_zwei.png
sudo mv -f usagiwallpaper.png astralsenawallpaper.png
sudo mv -f swapimage.png usagiwallpaper.png

feh --bg-fill /usr/share/endeavouros/backgrounds/endeavouros-wallpaper.png

exit 0
