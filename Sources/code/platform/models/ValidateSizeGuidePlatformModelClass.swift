

import Foundation
public extension PlatformClient {
    /*
         Model: ValidateSizeGuide
         Used By: Catalog
     */

    class ValidateSizeGuide: Codable {
        public var image: String?

        public var subtitle: String?

        public var companyId: Int?

        public var createdOn: String?

        public var title: String

        public var description: String?

        public var createdBy: [String: Any]?

        public var name: String

        public var active: Bool?

        public var modifiedOn: String?

        public var tag: String?

        public var guide: Guide?

        public var id: String?

        public var brandId: Int?

        public var modifiedBy: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case image

            case subtitle

            case companyId = "company_id"

            case createdOn = "created_on"

            case title

            case description

            case createdBy = "created_by"

            case name

            case active

            case modifiedOn = "modified_on"

            case tag

            case guide

            case id

            case brandId = "brand_id"

            case modifiedBy = "modified_by"
        }

        public init(active: Bool? = nil, brandId: Int? = nil, companyId: Int? = nil, createdBy: [String: Any]? = nil, createdOn: String? = nil, description: String? = nil, guide: Guide? = nil, id: String? = nil, image: String? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, subtitle: String? = nil, tag: String? = nil, title: String) {
            self.image = image

            self.subtitle = subtitle

            self.companyId = companyId

            self.createdOn = createdOn

            self.title = title

            self.description = description

            self.createdBy = createdBy

            self.name = name

            self.active = active

            self.modifiedOn = modifiedOn

            self.tag = tag

            self.guide = guide

            self.id = id

            self.brandId = brandId

            self.modifiedBy = modifiedBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                image = try container.decode(String.self, forKey: .image)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subtitle = try container.decode(String.self, forKey: .subtitle)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            title = try container.decode(String.self, forKey: .title)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                active = try container.decode(Bool.self, forKey: .active)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tag = try container.decode(String.self, forKey: .tag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                guide = try container.decode(Guide.self, forKey: .guide)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandId = try container.decode(Int.self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(guide, forKey: .guide)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
        }
    }
}
