

import Foundation
public extension ApplicationClient {
    /*
         Model: DataResponse
         Used By: Logistic
     */
    class DataResponse: Codable {
        public var error: Error

        public var subType: String?

        public var meta: Meta?

        public var uid: String?

        public var displayName: String?

        public var parents: [Parents]?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case error

            case subType = "sub_type"

            case meta

            case uid

            case displayName = "display_name"

            case parents

            case name
        }

        public init(displayName: String? = nil, error: Error, meta: Meta? = nil, name: String? = nil, parents: [Parents]? = nil, subType: String? = nil, uid: String? = nil) {
            self.error = error

            self.subType = subType

            self.meta = meta

            self.uid = uid

            self.displayName = displayName

            self.parents = parents

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            error = try container.decode(Error.self, forKey: .error)

            do {
                subType = try container.decode(String.self, forKey: .subType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(Meta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                parents = try container.decode([Parents].self, forKey: .parents)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(subType, forKey: .subType)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(parents, forKey: .parents)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
