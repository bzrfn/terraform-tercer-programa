locals {
  location = var.location
  suffix   = "${var.project_name}-${var.environment}-${var.location}-${var.instance}"

  tags = merge(
    var.tags,
    {
      Project     = var.project_name
      Environment = upper(var.environment)
      Location    = var.location
      Practice    = "tercer-programa"
    }
  )
}
