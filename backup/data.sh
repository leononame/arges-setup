#!/bin/bash

### Backup Data

echo "#### Restore Data"
# Remove all none hidden folders from home
echo "Removing home folders..."
rm -rf -- ~/*/

# Restore home folder without dotfiles
echo "Restore data from backup..."
for i in $BACKUP/*; do
	echo "Restoring $i"
	$copy --info=progress2 $i ~
done

echo -e "\n"
echo "Data restore complete!"
