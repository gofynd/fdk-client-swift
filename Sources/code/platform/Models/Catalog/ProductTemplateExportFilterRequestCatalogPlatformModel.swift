

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ProductTemplateExportFilterRequest
         Used By: Catalog
     */

    class ProductTemplateExportFilterRequest: Codable {
        public var toDate: String?

        public var catalogueTypes: [String]

        public var fromDate: String?

        public var templates: [String]

        public var brands: [String]?

        public enum CodingKeys: String, CodingKey {
            case toDate = "to_date"

            case catalogueTypes = "catalogue_types"

            case fromDate = "from_date"

            case templates

            case brands
        }

        public init(brands: [String]? = nil, catalogueTypes: [String], fromDate: String? = nil, templates: [String], toDate: String? = nil) {
            self.toDate = toDate

            self.catalogueTypes = catalogueTypes

            self.fromDate = fromDate

            self.templates = templates

            self.brands = brands
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                toDate = try container.decode(String.self, forKey: .toDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            catalogueTypes = try container.decode([String].self, forKey: .catalogueTypes)

            do {
                fromDate = try container.decode(String.self, forKey: .fromDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            templates = try container.decode([String].self, forKey: .templates)

            do {
                brands = try container.decode([String].self, forKey: .brands)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(toDate, forKey: .toDate)

            try? container.encodeIfPresent(catalogueTypes, forKey: .catalogueTypes)

            try? container.encodeIfPresent(fromDate, forKey: .fromDate)

            try? container.encodeIfPresent(templates, forKey: .templates)

            try? container.encodeIfPresent(brands, forKey: .brands)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ProductTemplateExportFilterRequest
         Used By: Catalog
     */

    class ProductTemplateExportFilterRequest: Codable {
        public var toDate: String?

        public var catalogueTypes: [String]

        public var fromDate: String?

        public var templates: [String]

        public var brands: [String]?

        public enum CodingKeys: String, CodingKey {
            case toDate = "to_date"

            case catalogueTypes = "catalogue_types"

            case fromDate = "from_date"

            case templates

            case brands
        }

        public init(brands: [String]? = nil, catalogueTypes: [String], fromDate: String? = nil, templates: [String], toDate: String? = nil) {
            self.toDate = toDate

            self.catalogueTypes = catalogueTypes

            self.fromDate = fromDate

            self.templates = templates

            self.brands = brands
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                toDate = try container.decode(String.self, forKey: .toDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            catalogueTypes = try container.decode([String].self, forKey: .catalogueTypes)

            do {
                fromDate = try container.decode(String.self, forKey: .fromDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            templates = try container.decode([String].self, forKey: .templates)

            do {
                brands = try container.decode([String].self, forKey: .brands)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(toDate, forKey: .toDate)

            try? container.encodeIfPresent(catalogueTypes, forKey: .catalogueTypes)

            try? container.encodeIfPresent(fromDate, forKey: .fromDate)

            try? container.encodeIfPresent(templates, forKey: .templates)

            try? container.encodeIfPresent(brands, forKey: .brands)
        }
    }
}
