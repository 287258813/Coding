# Install

execute ``` swift build -c release -Xswiftc -static-stdlib ```

then ```cp -f .build/release/Coding /usr/local/bin/xcode``` for Xcode 

or ```cp -f .build/release/Coding /usr/local/bin/code``` for Visual Studio Code 

finally, you can use ```code ~/Document/ProjectName``` instead of ```open ~/Document/ProjectName -a Visual\ Studio\ Code``` to open project