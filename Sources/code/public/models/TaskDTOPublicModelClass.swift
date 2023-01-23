

import Foundation
public extension PublicClient {
    /*
         Model: TaskDTO
         Used By: Inventory
     */

    class TaskDTO: Codable {
        public var type: Int?

        public var groupList: [GenericDTO]?

        public enum CodingKeys: String, CodingKey {
            case type

            case groupList = "group_list"
        }

        public init(groupList: [GenericDTO]? = nil, type: Int? = nil) {
            self.type = type

            self.groupList = groupList
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(Int.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                groupList = try container.decode([GenericDTO].self, forKey: .groupList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(groupList, forKey: .groupList)
        }
    }
}
