if [ -z "$1" ]
then
    echo "degit.sh-- a script to degit"
    echo "Usage: ./degit.sh [path to folder you want to degit, or . for current folder"
    echo "This script removes the files that Git uses to maintain a folder control, thereby allowing you to remove said folder using rm or similar tools."
    echo "Returns -1 if you see this, -2 if you get a good to go message, and 0 if it has degitted your folder." 
    exit -1
fi
if [ -e $1/.git ]
then
    rm -rf $1/.git
    rm -rf $1/.gitkeep
    echo "Done."
    exit 0
else
    echo "This folder doesn't have Git on it (or at least the folders that tell Git what to do). Good to go!"
    exit -2
fi