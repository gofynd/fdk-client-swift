

import Foundation
public extension PlatformClient {
    /*
         Model: GetActionsResponse
         Used By: OrderManage
     */

    class GetActionsResponse: Codable {
        public var permissions: ActionInfo

        public enum CodingKeys: String, CodingKey {
            case permissions
        }

        public init(permissions: ActionInfo) {
            self.permissions = permissions
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            permissions = try container.decode(ActionInfo.self, forKey: .permissions)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(permissions, forKey: .permissions)
        }
    }
}
