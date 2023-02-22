

import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: PincodeEntityResponse
         Used By: Logistic
     */
    class PincodeEntityResponse: Codable {
        public var uid: String?

        public var name: String?

        public var displaySname: String?

        public var logistics: LogisticsResponse?

        public var isActive: Bool?

        public var parents: [PincodeParentsResponse]?

        public var meta: CountryMetaResponse?

        public var parentId: String?

        public var subType: String?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case uid

            case name

            case displaySname = "display_sname"

            case logistics

            case isActive = "is_active"

            case parents

            case meta

            case parentId = "parent_id"

            case subType = "sub_type"

            case type
        }

        public init(displaySname: String? = nil, isActive: Bool? = nil, logistics: LogisticsResponse? = nil, meta: CountryMetaResponse? = nil, name: String? = nil, parents: [PincodeParentsResponse]? = nil, parentId: String? = nil, subType: String? = nil, type: String? = nil, uid: String? = nil) {
            self.uid = uid

            self.name = name

            self.displaySname = displaySname

            self.logistics = logistics

            self.isActive = isActive

            self.parents = parents

            self.meta = meta

            self.parentId = parentId

            self.subType = subType

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displaySname = try container.decode(String.self, forKey: .displaySname)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logistics = try container.decode(LogisticsResponse.self, forKey: .logistics)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                parents = try container.decode([PincodeParentsResponse].self, forKey: .parents)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(CountryMetaResponse.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                parentId = try container.decode(String.self, forKey: .parentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subType = try container.decode(String.self, forKey: .subType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(displaySname, forKey: .displaySname)

            try? container.encodeIfPresent(logistics, forKey: .logistics)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(parents, forKey: .parents)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(parentId, forKey: .parentId)

            try? container.encodeIfPresent(subType, forKey: .subType)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
