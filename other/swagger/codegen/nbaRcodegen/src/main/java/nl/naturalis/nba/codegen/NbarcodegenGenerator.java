package nl.naturalis.nba.codegen;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.swing.JToggleButton.ToggleButtonModel;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.fasterxml.jackson.databind.SerializationFeature;

import io.swagger.codegen.CodegenConfig;
import io.swagger.codegen.CodegenConstants;
import io.swagger.codegen.CodegenOperation;
import io.swagger.codegen.DefaultCodegen;
import io.swagger.codegen.SupportingFile;
import io.swagger.codegen.languages.RClientCodegen;
import io.swagger.models.Operation;

public class NbarcodegenGenerator extends RClientCodegen implements CodegenConfig {

	static Logger LOGGER = LoggerFactory.getLogger(NbarcodegenGenerator.class);

	// source folder where to write the files
	protected String sourceFolder = "src";
	protected String apiVersion = "v2";
	protected String authorFirstName = "Hannes";
	protected String authorLastName = "Hettling";	
	protected String authorEmail = "hannes.hettling@naturalis.nl";
	protected String repoURL = "https://github.com/naturalis/nbaR";
	protected String bugReportURL = "https://github.com/naturalis/nbaR/issues/new";
	protected String nbaRemail = "nba@naturalis.nl";
	protected String extendedDescription = "This is the official client to the Netherlands Biodiversity API\n" 
			 + "    (NBA, <http://api.biodiversitydata.nl>) for the R programming language.\n"
			 + "    More information on the NBA can be found at <http://docs.biodiversitydata.nl>.";
	
	/**
	 * Configures a friendly name for the generator. This will be used by
	 * the generator to select the library with the -l flag.
	 * 
	 * @return the friendly name for the generator
	 */
	public String getName()
	{
		return "nbaRcodegen";
	}

	/**
	 * Returns human-friendly help for the generator. Provide the consumer
	 * with help tips, parameters here
	 * 
	 * @return A string value for the help message
	 */
	public String getHelp()
	{
		return "Generates a client R library for the Netherlands Biodiversity API (NBA).";
	}

	public NbarcodegenGenerator()
	{
		super();

		// put some custom additional properties for package metadata files
		additionalProperties.put("authorFirstName", authorFirstName);
		additionalProperties.put("authorLastName", authorLastName);		
		additionalProperties.put("authorEmail", authorEmail);
		additionalProperties.put("repoURL", repoURL);
		additionalProperties.put("nbaRemail", nbaRemail);
		additionalProperties.put("extendedDescription", extendedDescription);
		additionalProperties.put("bugReportURL", bugReportURL);
						
		// put custom mustache file for package description
		supportingFiles.add(new SupportingFile("package.mustache", "", "R/nbaR-package.r"));
		supportingFiles.add(new SupportingFile("license.mustache", "", "LICENSE"));

		// set the output folder here
		this.outputFolder = ".";

		this.testPackage = "tests/testthat";
		
		modelTestTemplateFiles.put("model_test.mustache", ".r");

		/**
		 * Template Location. This is the location which templates will
		 * be read from. The generator will use the resource stream to
		 * attempt to read the templates.
		 */
		templateDir = "nbaRcodegen";

	        /*defaultIncludes = new HashSet<String>(
	                        Arrays.asList(
	                            "map",
	                            "array",
	                            "list")
	                        );
		*/
	        languageSpecificPrimitives = new HashSet<String>(
	                    Arrays.asList(
	                        "integer",
	                        "numeric",
	                        "character", 
	                        "list", 
	                        "logical")
	                    );
			        
	        
		// nbaR specific type mapping
		typeMapping.put("array", "list");
		typeMapping.put("object", "list");
		typeMapping.put("list", "list");
		
	        typeMapping.put("integer", "integer");
	        typeMapping.put("long", "integer");
	        typeMapping.put("number", "numeric");
	        typeMapping.put("float", "numeric");
	        typeMapping.put("double", "numeric");
	        typeMapping.put("boolean", "logical");
	        typeMapping.put("string", "character");
	        typeMapping.put("UUID", "character");
	        typeMapping.put("date", "character");
	        typeMapping.put("DateTime", "character");
	        typeMapping.put("password", "character");
	        typeMapping.put("file", null);
	        typeMapping.put("binary", "character");
	        typeMapping.put("ByteArray", "character");
		typeMapping.put("Path", "character");
		typeMapping.put("GeoJsonObject", "list");
		
		
		//typeMapping.put("object", "Character");
		typeMapping.put("Path", "character"); //caution! isString in json output not set to true !
		

	}

	    @Override
	    public void processOpts() {
	        super.processOpts();

	        if (additionalProperties.containsKey(CodegenConstants.PACKAGE_NAME)) {
	            setPackageName((String) additionalProperties.get(CodegenConstants.PACKAGE_NAME));
	        } else {
	            setPackageName("swagger");
	        }

	        if (additionalProperties.containsKey(CodegenConstants.PACKAGE_VERSION)) {
	            setPackageVersion((String) additionalProperties.get(CodegenConstants.PACKAGE_VERSION));
	        } else {
	            setPackageVersion("1.0.0");
	        }

	        additionalProperties.put(CodegenConstants.PACKAGE_NAME, packageName);
	        additionalProperties.put(CodegenConstants.PACKAGE_VERSION, packageVersion);

	        additionalProperties.put("apiDocPath", apiDocPath);
	        additionalProperties.put("modelDocPath", modelDocPath);

	        //Hannes: Commented out from superclass
	        //apiTestTemplateFiles.clear(); // TODO: add api test template
	        //modelTestTemplateFiles.clear(); // TODO: add model test template

	        //apiDocTemplateFiles.clear(); // TODO: add api doc template
	        //modelDocTemplateFiles.clear(); // TODO: add model doc template

	        modelPackage = packageName;
	        apiPackage = packageName;

	        supportingFiles.add(new SupportingFile("README.mustache", "", "README.md"));
	        supportingFiles.add(new SupportingFile("git_push.sh.mustache", "", "git_push.sh"));
	        supportingFiles.add(new SupportingFile("gitignore.mustache", "", ".gitignore"));
	        supportingFiles.add(new SupportingFile("description.mustache", "", "DESCRIPTION"));
	        supportingFiles.add(new SupportingFile("Rbuildignore.mustache", "", ".Rbuildignore"));
	        supportingFiles.add(new SupportingFile(".travis.yml", "", ".travis.yml"));
	        supportingFiles.add(new SupportingFile("response.mustache", "/R", "Response.r"));
	        // supportingFiles.add(new SupportingFile("element.mustache", "/R", "Element.r"));
	        supportingFiles.add(new SupportingFile("api_client.mustache", "/R", "ApiClient.r"));
	        supportingFiles.add(new SupportingFile("NAMESPACE.mustache", "", "NAMESPACE"));
	    }
	
	@Override
	public String toModelTestFilename(String name)
	{
		System.out.println("toModelTestFilename");
		return ("test-" + name);
	}
	
/*	@Override
	public String modelTestFileFolder() 
	{
		System.out.println("Testpackage : " + testPackage());
	        return "tests/testthat/";
	}
*/	
	/*
	 * Overridden to change later R object name from e.g. SpecimenApi to
	 * SpecimenClient
	 */
	@Override
	public String toApiFilename(String name)
	{
		name = name.replaceAll("-", "_");

		// changed 'api' to 'client' from superclass
		return camelize(name + "_client");
	}

	/*
	 * Overridden to change later R object name from e.g. SpecimenApi to
	 * SpecimenClient
	 */
	@Override
	public String toApiName(String name)
	{
		// Changed "Api" to "Client"
		if (name.length() == 0) {
			return "DefaultClient";
		}
		return initialCaps(name) + "Client";
	}
	
	
	/*
	 * Overridden to clean up operationID from suffixes like _http_get2 etc
	 */
	@Override
	public String toOperationId(String operationId)
	{
		String sanitizedOperationId = sanitizeName(operationId);

		// Remove trailing numbers from operation IDs and also
		// everything after _http
		sanitizedOperationId = sanitizedOperationId.replaceAll("[0-9]+$", "");
		sanitizedOperationId = sanitizedOperationId.replaceAll("HttpGet.*", "");
		sanitizedOperationId = sanitizedOperationId.replaceAll("HttpPost.*", "");

		// method name cannot use reserved keyword, e.g. return
		if (isReservedWord(sanitizedOperationId)) {
			LOGGER.warn(operationId + " (reserved word) cannot be used as method name. Renamed to "
					+ underscore("call_" + operationId));
			sanitizedOperationId = "call_" + sanitizedOperationId;
		}

		return underscore(sanitizedOperationId);
	}

	/*
	 * Overridden to filter out POST endpoints
	 */
	@SuppressWarnings("unchecked")
	@Override
	public Map<String, Object> postProcessOperations(Map<String, Object> objs)
	{
		super.postProcessOperations(objs);

		Map<String, Object> operations = (Map<String, Object>) objs.get("operations");
		if (operations != null) {
			List<CodegenOperation> ops = (List<CodegenOperation>) operations.get("operation");
			for (Iterator<CodegenOperation> it = ops.iterator(); it.hasNext();) {
				CodegenOperation operation = it.next();
				if (operation.httpMethod.equals("POST")) {
					it.remove();
				}
			}
		}
		return objs;
	}

	/*
	 * Overridden to omit check for unique operation IDs
	 */
	@Override
	public void addOperationToGroup(String tag, String resourcePath, Operation operation, CodegenOperation co,
			Map<String, List<CodegenOperation>> operations)
	{
		List<CodegenOperation> opList = operations.get(tag);
		if (opList == null) {
			opList = new ArrayList<CodegenOperation>();
			operations.put(tag, opList);
		}
		// check for operationId uniqueness

		String uniqueName = co.operationId;
		/*
		 * System.out.println("Unique name : " + uniqueName);
		 * 
		 * int counter = 0; for (CodegenOperation op : opList) { if
		 * (uniqueName.equals(op.operationId)) { uniqueName =
		 * co.operationId + "_" + counter; counter++; } } if
		 * (!co.operationId.equals(uniqueName)) {
		 * LOGGER.warn("generated unique operationId `" + uniqueName +
		 * "`"); }
		 */
		co.operationId = uniqueName;

		co.operationIdLowerCase = uniqueName.toLowerCase();
		co.operationIdCamelCase = DefaultCodegen.camelize(uniqueName);
		co.operationIdSnakeCase = DefaultCodegen.underscore(uniqueName);
		opList.add(co);
		co.baseName = tag;
	}
}