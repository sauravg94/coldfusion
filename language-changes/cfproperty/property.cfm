<cfscript>
    // Instantiate the component
    componentPath = "myProps";
    componentInstance = createObject("component", componentPath);
    
    // Get metadata for the component
    metadata = getComponentMetaData(componentPath);

    // Loop through all functions (methods) to find getters
    results = {};
    for (method in metadata.functions) {
        // Check if the method starts with "get" or "is" (for booleans)
        if (left(method.name, 3) == "get" || left(method.name, 2) == "is") {
            try {
                // Dynamically call the getter method
                propertyName = method.name; // getPropertyName or isPropertyName
                results[propertyName] = componentInstance[propertyName]();
            } catch (any e) {
                results[propertyName] = "Error retrieving value: " & e.message;
            }
        }
    }

    // Dump the result of all getter method calls
    writeDump(var=results, label="Getter Results");
</cfscript>