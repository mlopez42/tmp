make fssum &&

sed -i '/found/s/^/: #/' tests/convert-tests.sh &&

mv tests/convert-tests/010-reiserfs-basic/test.sh{,.broken}                 &&
mv tests/convert-tests/011-reiserfs-delete-all-rollback/test.sh{,.broken}   &&
mv tests/convert-tests/012-reiserfs-large-hole-extent/test.sh{,.broken}     &&
mv tests/convert-tests/013-reiserfs-common-inode-flags/test.sh{,.broken}    &&
mv tests/convert-tests/014-reiserfs-tail-handling/test.sh{,.broken}
