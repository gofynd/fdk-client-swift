

import Foundation
public extension PublicClient.Inventory {
    /*
         Model: GStore
         Used By: Inventory
     */

    class GStore: Codable {
        public var id: String?

        public var integration: String?

        public var level: String?

        public var uid: Int?

        public var opted: Bool?

        public var permissions: [String]?

        public var token: String?

        public var code: String?

        public var name: String?

        public var data: StoreData?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case integration

            case level

            case uid

            case opted

            case permissions

            case token

            case code

            case name

            case data
        }

        public init(code: String? = nil, data: StoreData? = nil, integration: String? = nil, level: String? = nil, name: String? = nil, opted: Bool? = nil, permissions: [String]? = nil, token: String? = nil, uid: Int? = nil, id: String? = nil) {
            self.id = id

            self.integration = integration

            self.level = level

            self.uid = uid

            self.opted = opted

            self.permissions = permissions

            self.token = token

            self.code = code

            self.name = name

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                integration = try container.decode(String.self, forKey: .integration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                level = try container.decode(String.self, forKey: .level)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                opted = try container.decode(Bool.self, forKey: .opted)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                permissions = try container.decode([String].self, forKey: .permissions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                token = try container.decode(String.self, forKey: .token)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

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
                data = try container.decode(StoreData.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(integration, forKey: .integration)

            try? container.encodeIfPresent(level, forKey: .level)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(opted, forKey: .opted)

            try? container.encodeIfPresent(permissions, forKey: .permissions)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
