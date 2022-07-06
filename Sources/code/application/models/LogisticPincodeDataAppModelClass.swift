

import Foundation
public extension ApplicationClient {
    /*
         Model: LogisticPincodeData
         Used By: Logistic
     */
    class LogisticPincodeData: Codable {
        public var meta: LogisticMeta?

        public var parents: [LogisticParents]?

        public var subType: String?

        public var name: String?

        public var error: LogisticError?

        public var uid: String?

        public var displayName: String?

        public enum CodingKeys: String, CodingKey {
            case meta

            case parents

            case subType = "sub_type"

            case name

            case error

            case uid

            case displayName = "display_name"
        }

        public init(displayName: String? = nil, error: LogisticError? = nil, meta: LogisticMeta? = nil, name: String? = nil, parents: [LogisticParents]? = nil, subType: String? = nil, uid: String? = nil) {
            self.meta = meta

            self.parents = parents

            self.subType = subType

            self.name = name

            self.error = error

            self.uid = uid

            self.displayName = displayName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode(LogisticMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                parents = try container.decode([LogisticParents].self, forKey: .parents)

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
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                error = try container.decode(LogisticError.self, forKey: .error)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(parents, forKey: .parents)

            try? container.encodeIfPresent(subType, forKey: .subType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
        }
    }
}
