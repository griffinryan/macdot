# git-merge-base
# Autogenerated from man page /Applications/Xcode.app/Contents/Developer/usr/share/man/man1/git-merge-base.1
complete -c git-merge-base -s a -l all -d 'Output all merge bases for the commits, instead of just one'
complete -c git-merge-base -l octopus
complete -c git-merge-base -l independent
complete -c git-merge-base -l is-ancestor
complete -c git-merge-base -l fork-point
complete -c git-merge-base -l -o---1---o---o---o---A -d 'the merge base between A and B is 1'
complete -c git-merge-base -l -2---1---o---o---o---A -d 'the result of git merge-base A B C is 1'
complete -c git-merge-base -l -1---o---A -d '    \\ /      X     / \\'
complete -c git-merge-base -l -2---o---o---B -d 'both 1 and 2 are merge-bases of A and B'
complete -c git-merge-base -l -o---o---B1--o---o---o---B -d '        \\          B0           \\            D0---D1---D (topic) where origin…'

