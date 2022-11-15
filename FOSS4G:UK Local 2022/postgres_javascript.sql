CREATE OR REPLACE FUNCTION locaria_core.unique_array_elements(arr_var JSONB) RETURNS JSONB AS
$$

    if(arr_var === null || arr_var === undefined || ! Array.isArray(arr_var)) {
        return []
    }

    return(Object.keys(arr_var.reduce((l, r) => l[r] = l, {})).sort())

$$ LANGUAGE PLV8;


SELECT locaria_core.unique_array_elements('[1,1,2,4,7]'::JSONB);

[1,2,4,7]