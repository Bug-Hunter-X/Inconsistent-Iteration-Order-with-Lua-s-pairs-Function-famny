# Lua Pairs Iteration Order Bug

This repository demonstrates a potential issue with Lua's `pairs` iterator.  The `pairs` function, while generally efficient, does not guarantee a consistent iteration order, particularly for nested tables or tables with metatables. This lack of order consistency can result in unexpected results in applications relying on a specific order of key-value traversal.

## The Problem

The provided Lua code illustrates this potential problem. The function `foo` recursively iterates through a nested table using `pairs`.  While the output might appear consistent in some runs, its order isn't guaranteed, leading to unpredictable behavior in applications that implicitly assume a defined iteration sequence.  The inconsistency becomes more prominent in more complex nested table structures or those with custom metamethods affecting the table iteration.