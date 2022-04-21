

import Foundation
public extension PlatformClient {
    /*
         Model: PropBeanDTO
         Used By: Inventory
     */

    class PropBeanDTO: Codable {
        public var required: Bool?

        public var optional: Bool?

        public var include: Bool?

        public var sourceField: String?

        public var sourceFields: [String]?

        public var destinationField: String?

        public var dataType: String?

        public var defaultValue: [String: Any]?

        public var constValue: [String: Any]?

        public var concatStr: String?

        public var functionName: String?

        public var transformerName: String?

        public var allParamFunctionName: String?

        public var subSeparator: String?

        public var indexField: String?

        public var ignoreIfNotExists: Bool?

        public var identifierType: String?

        public var projectionQuery: [String: Any]?

        public var enrichFromMaster: Bool?

        public enum CodingKeys: String, CodingKey {
            case required

            case optional

            case include

            case sourceField = "source_field"

            case sourceFields = "source_fields"

            case destinationField = "destination_field"

            case dataType = "data_type"

            case defaultValue = "default_value"

            case constValue = "const_value"

            case concatStr = "concat_str"

            case functionName = "function_name"

            case transformerName = "transformer_name"

            case allParamFunctionName = "all_param_function_name"

            case subSeparator = "sub_separator"

            case indexField = "index_field"

            case ignoreIfNotExists = "ignore_if_not_exists"

            case identifierType = "identifier_type"

            case projectionQuery = "projection_query"

            case enrichFromMaster = "enrich_from_master"
        }

        public init(allParamFunctionName: String? = nil, concatStr: String? = nil, constValue: [String: Any]? = nil, dataType: String? = nil, defaultValue: [String: Any]? = nil, destinationField: String? = nil, enrichFromMaster: Bool? = nil, functionName: String? = nil, identifierType: String? = nil, ignoreIfNotExists: Bool? = nil, include: Bool? = nil, indexField: String? = nil, optional: Bool? = nil, projectionQuery: [String: Any]? = nil, required: Bool? = nil, sourceField: String? = nil, sourceFields: [String]? = nil, subSeparator: String? = nil, transformerName: String? = nil) {
            self.required = required

            self.optional = optional

            self.include = include

            self.sourceField = sourceField

            self.sourceFields = sourceFields

            self.destinationField = destinationField

            self.dataType = dataType

            self.defaultValue = defaultValue

            self.constValue = constValue

            self.concatStr = concatStr

            self.functionName = functionName

            self.transformerName = transformerName

            self.allParamFunctionName = allParamFunctionName

            self.subSeparator = subSeparator

            self.indexField = indexField

            self.ignoreIfNotExists = ignoreIfNotExists

            self.identifierType = identifierType

            self.projectionQuery = projectionQuery

            self.enrichFromMaster = enrichFromMaster
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                required = try container.decode(Bool.self, forKey: .required)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                optional = try container.decode(Bool.self, forKey: .optional)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                include = try container.decode(Bool.self, forKey: .include)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sourceField = try container.decode(String.self, forKey: .sourceField)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sourceFields = try container.decode([String].self, forKey: .sourceFields)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                destinationField = try container.decode(String.self, forKey: .destinationField)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dataType = try container.decode(String.self, forKey: .dataType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                defaultValue = try container.decode([String: Any].self, forKey: .defaultValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                constValue = try container.decode([String: Any].self, forKey: .constValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                concatStr = try container.decode(String.self, forKey: .concatStr)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                functionName = try container.decode(String.self, forKey: .functionName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                transformerName = try container.decode(String.self, forKey: .transformerName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allParamFunctionName = try container.decode(String.self, forKey: .allParamFunctionName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subSeparator = try container.decode(String.self, forKey: .subSeparator)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                indexField = try container.decode(String.self, forKey: .indexField)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ignoreIfNotExists = try container.decode(Bool.self, forKey: .ignoreIfNotExists)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identifierType = try container.decode(String.self, forKey: .identifierType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                projectionQuery = try container.decode([String: Any].self, forKey: .projectionQuery)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                enrichFromMaster = try container.decode(Bool.self, forKey: .enrichFromMaster)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(required, forKey: .required)

            try? container.encodeIfPresent(optional, forKey: .optional)

            try? container.encodeIfPresent(include, forKey: .include)

            try? container.encodeIfPresent(sourceField, forKey: .sourceField)

            try? container.encodeIfPresent(sourceFields, forKey: .sourceFields)

            try? container.encodeIfPresent(destinationField, forKey: .destinationField)

            try? container.encodeIfPresent(dataType, forKey: .dataType)

            try? container.encodeIfPresent(defaultValue, forKey: .defaultValue)

            try? container.encodeIfPresent(constValue, forKey: .constValue)

            try? container.encodeIfPresent(concatStr, forKey: .concatStr)

            try? container.encodeIfPresent(functionName, forKey: .functionName)

            try? container.encodeIfPresent(transformerName, forKey: .transformerName)

            try? container.encodeIfPresent(allParamFunctionName, forKey: .allParamFunctionName)

            try? container.encodeIfPresent(subSeparator, forKey: .subSeparator)

            try? container.encodeIfPresent(indexField, forKey: .indexField)

            try? container.encodeIfPresent(ignoreIfNotExists, forKey: .ignoreIfNotExists)

            try? container.encodeIfPresent(identifierType, forKey: .identifierType)

            try? container.encodeIfPresent(projectionQuery, forKey: .projectionQuery)

            try? container.encodeIfPresent(enrichFromMaster, forKey: .enrichFromMaster)
        }
    }
}
