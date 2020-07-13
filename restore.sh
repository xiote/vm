if [ $# -ne 1 ]; then
 echo "Usage: $0 <vm_name>"
 exit -1
else
    echo "vmrun revertToSnapshot..."
    vmrun revertToSnapshot "/Volumes/Shared/Virtual Machines/$1.vmwarevm/$1.vmx" Snapshot

    echo "vmrun start..."
    vmrun start "/Volumes/Shared/Virtual Machines/$1.vmwarevm/$1.vmx"

    echo "$1 is ready!"
fi
