import re

def clean_labels(input_file, output_file):
    """
    Cleans labels in a Turtle file by:
    - Replacing special characters with spaces.
    - Truncating to 20 characters and appending '...' if longer than 30 characters.
    """
    with open(input_file, 'r', encoding='utf-8') as infile, open(output_file, 'w', encoding='utf-8') as outfile:
        for line in infile:
            # Match all literals (content inside quotation marks)
            matches = re.findall(r'"(.*?)"', line)
            for match in matches:
                original_label = match
                # Process labels longer than 30 characters
                if len(original_label) > 30:
                    # Replace special characters with spaces
                    cleaned_label = re.sub(r'[->\[\]{}\(\)\/]', ' ', original_label)
                    # Truncate to 20 characters and append "..."
                    cleaned_label = cleaned_label[:20] + "..."
                    # Replace the original label in the line
                    line = line.replace(f'"{original_label}"', f'"{cleaned_label}"')
            # Write the processed line to the output file
            outfile.write(line)

# Specify the input and output file paths
input_file = r"data\output\tarql_output.ttl"  # Raw string to prevent escape sequence issues
output_file = r"data\output\rdf_ontology.ttl"  

# Call the function to process the file
clean_labels(input_file, output_file)

print(f"Processing complete. Cleaned file saved as '{output_file}'.")
