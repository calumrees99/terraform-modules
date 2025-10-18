Need to do:
- Add optional parameters to budget moddule
- Remove the subscription ID data source and pass it in via variable.
- Restructure module folders (Have examples in sub folder of module)
- Add other budget types e.g. to either apply to subscription, tenant etc...
- Should also change this line 15 of module     for_each = var.notification != null ? [var.notification] : [] to just for_each = var.notification
