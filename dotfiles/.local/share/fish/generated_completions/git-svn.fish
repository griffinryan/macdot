# git-svn
# Autogenerated from man page /Applications/Xcode.app/Contents/Developer/usr/share/man/man1/git-svn.1
complete -c git-svn -l shared -l template -d 'Only used with the init command.  These are passed directly to git init'
complete -c git-svn -s r -l revision -d 'Used with the fetch command'
complete -c git-svn -l stdin -d 'Only used with the set-tree command'
complete -c git-svn -l rmdir -d 'Only used with the dcommit, set-tree and commit-diff commands'
complete -c git-svn -s e -l edit -d 'Only used with the dcommit, set-tree and commit-diff commands'
complete -c git-svn -o 'l<num>' -l find-copies-harder -d 'Only used with the dcommit, set-tree and commit-diff commands'
complete -c git-svn -o 'A<filename>' -l authors-file -d 'Syntax is compatible with the file used by git cvsimport but an empty email a…'
complete -c git-svn -l authors-prog -d 'If this option is specified, for each SVN committer name that does not exist …'
complete -c git-svn -s q -l quiet -d 'Make git svn less verbose'
complete -c git-svn -s m -l merge -o 's<strategy>' -l strategy -s p -l rebase-merges -l preserve-merges -d 'These are only used with the dcommit and rebase commands'
complete -c git-svn -s n -l dry-run -d 'This can be used with the dcommit, rebase, branch and tag commands'
complete -c git-svn -l use-log-author -d 'When retrieving svn commits into Git (as part of fetch, rebase, or dcommit op…'
complete -c git-svn -l add-author-from -d 'When committing to svn from Git (as part of set-tree or dcommit operations), …'
complete -c git-svn -o 'T<trunk_subdir>' -l trunk -o 't<tags_subdir>' -l tags -o 'b<branches_subdir>' -l branches -s s -l stdlayout
complete -c git-svn -l no-metadata
complete -c git-svn -l use-svm-props
complete -c git-svn -l use-svnsync-props
complete -c git-svn -l rewrite-root
complete -c git-svn -l rewrite-uuid
complete -c git-svn -l username
complete -c git-svn -l prefix
complete -c git-svn -l ignore-refs
complete -c git-svn -l ignore-paths
complete -c git-svn -l include-paths
complete -c git-svn -l no-minimize-url
complete -c git-svn -l localtime
complete -c git-svn -l parent
complete -c git-svn -l log-window-size
complete -c git-svn -l fetch-all -d and
complete -c git-svn -l preserve-empty-dirs
complete -c git-svn -l placeholder-filename
complete -c git-svn -s l -l local
complete -c git-svn -l no-rebase
complete -c git-svn -l commit-url
complete -c git-svn -l mergeinfo
complete -c git-svn -l interactive
complete -c git-svn -l message
complete -c git-svn -s t -l tag
complete -c git-svn -o 'd<path>' -l destination
complete -c git-svn -l parents
complete -c git-svn -s v -l verbose
complete -c git-svn -l limit
complete -c git-svn -l incremental
complete -c git-svn -l show-commit
complete -c git-svn -l oneline
complete -c git-svn -l git-format
complete -c git-svn -s B -l before
complete -c git-svn -s A -l after
complete -c git-svn -s F -d 'option, or indirectly from the tag or commit when the second tree-ish denotes…'
complete -c git-svn -l file
complete -c git-svn -o 'i<GIT_SVN_ID>' -l id
complete -c git-svn -o 'R<remote' -l svn-remote
complete -c git-svn -l follow-parent

