#!/bin/bash

# Exit on error
set -e

# Error handling function
error_handler() {
    local line_number=$1
    local error_code=$2
    echo "Error occurred in line ${line_number} (Exit code: ${error_code})"
    exit "${error_code}"
}

# Set error handler
trap 'error_handler ${LINENO} $?' ERR

# Configuration
WEBSITE_URL="https://risy.io"
OUTPUT_DIR="./Risy DAO"
OUTPUT_FILE="${OUTPUT_DIR}/index.html"
PYTHON_SCRIPT="./webpage2html.py"

# Logging function
log() {
    echo "[$(date +'%Y-%m-%d %H:%M:%S')] $1"
}

# Check required commands
check_requirements() {
    log "Checking requirements..."
    
    if ! command -v python &> /dev/null
    then
        log "Error: Python is not installed"
        exit 1
    fi
    
    if [ ! -f "$PYTHON_SCRIPT" ]
    then
        log "Error: webpage2html.py script not found"
        exit 1
    fi
}

# Clean previous output
clean_output() {
    log "Cleaning previous output..."
    
    if [ ! -d "$OUTPUT_DIR" ]
    then
        mkdir -p "$OUTPUT_DIR"
        log "Created output directory"
    fi
    
    if [ -f "$OUTPUT_FILE" ]
    then
        rm -f "$OUTPUT_FILE"
        log "Removed existing index.html"
    fi
}

# Generate website
generate_website() {
    log "Generating website from $WEBSITE_URL..."
    
    python "$PYTHON_SCRIPT" "$WEBSITE_URL" -s -o "$OUTPUT_FILE"
    
    if [ ! -f "$OUTPUT_FILE" ]
    then
        log "Error: Failed to generate website"
        exit 1
    fi
}

# Fix image paths
fix_image_paths() {
    log "Fixing image paths..."
    sed -i'' 's|img/\([^/]*\.png\)|\1|g' "$OUTPUT_FILE"
    log "Image paths fixed"
}

# Main execution
main() {
    log "Starting website build process..."
    check_requirements
    clean_output
    generate_website
    fix_image_paths
    log "Website build completed successfully"
}

# Execute main function
main