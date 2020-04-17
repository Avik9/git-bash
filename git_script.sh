# !/bin/bash

{
	# while true; do
	 	time=`date +%H_%M_%S`

	# 	if [ $time == "00_00_00" ]; then

			# sleep 1s
			echo "time is $time" 
		
			a=0
			while ((a<25 || a>50)); do
				a=$(((RANDOM % 100)/2))
			done

			echo "$a files will be created! at $time"
			echo

			while ((a>0)); do
				fileName=`date +"%Y_%m_%d_%H_%M_%S"`".txt"

				# touch files/`date +"%Y_%m_%d_%H_%M_%S"`".txt"
				# echo Created `date +"%Y_%m_%d_%H_%M_%S"`".txt"

				touch files/$fileName

				cd /Users/avik/Desktop/AVIK/Projects/git_bash_script/

				git pull
				git add .
				git commit -m "Created $fileName"
				git push

				rm files/$fileName

				((--a))
				echo
				echo "$a" files are left!
				echo

				# echo "fileName: $fileName"
				sleep 2s
			done
	# 	fi
	# done
} >& progress.txt &

exit ;
