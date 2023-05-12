

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ProductTemplateExportFilterRequest
         Used By: Catalog
     */

    class ProductTemplateExportFilterRequest: Codable {
        public var brands: [String]?

        public var templates: [String]

        public var catalogueTypes: [String]

        public var toDate: String?

        public var fromDate: String?

        public enum CodingKeys: String, CodingKey {
            case brands

            case templates

            case catalogueTypes = "catalogue_types"

            case toDate = "to_date"

            case fromDate = "from_date"
        }

        public init(brands: [String]? = nil, catalogueTypes: [String], fromDate: String? = nil, templates: [String], toDate: String? = nil) {
            self.brands = brands

            self.templates = templates

            self.catalogueTypes = catalogueTypes

            self.toDate = toDate

            self.fromDate = fromDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brands = try container.decode([String].self, forKey: .brands)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            templates = try container.decode([String].self, forKey: .templates)

            catalogueTypes = try container.decode([String].self, forKey: .catalogueTypes)

            do {
                toDate = try container.decode(String.self, forKey: .toDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fromDate = try container.decode(String.self, forKey: .fromDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brands, forKey: .brands)

            try? container.encodeIfPresent(templates, forKey: .templates)

            try? container.encodeIfPresent(catalogueTypes, forKey: .catalogueTypes)

            try? container.encodeIfPresent(toDate, forKey: .toDate)

            try? container.encodeIfPresent(fromDate, forKey: .fromDate)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ProductTemplateExportFilterRequest
         Used By: Catalog
     */

    class ProductTemplateExportFilterRequest: Codable {
        public var brands: [String]?

        public var templates: [String]

        public var catalogueTypes: [String]

        public var toDate: String?

        public var fromDate: String?

        public enum CodingKeys: String, CodingKey {
            case brands

            case templates

            case catalogueTypes = "catalogue_types"

            case toDate = "to_date"

            case fromDate = "from_date"
        }

        public init(brands: [String]? = nil, catalogueTypes: [String], fromDate: String? = nil, templates: [String], toDate: String? = nil) {
            self.brands = brands

            self.templates = templates

            self.catalogueTypes = catalogueTypes

            self.toDate = toDate

            self.fromDate = fromDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brands = try container.decode([String].self, forKey: .brands)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            templates = try container.decode([String].self, forKey: .templates)

            catalogueTypes = try container.decode([String].self, forKey: .catalogueTypes)

            do {
                toDate = try container.decode(String.self, forKey: .toDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fromDate = try container.decode(String.self, forKey: .fromDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brands, forKey: .brands)

            try? container.encodeIfPresent(templates, forKey: .templates)

            try? container.encodeIfPresent(catalogueTypes, forKey: .catalogueTypes)

            try? container.encodeIfPresent(toDate, forKey: .toDate)

            try? container.encodeIfPresent(fromDate, forKey: .fromDate)
        }
    }
}
