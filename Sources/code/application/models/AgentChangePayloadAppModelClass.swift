

import Foundation
public extension ApplicationClient {
    /*
         Model: AgentChangePayload
         Used By: Lead
     */
    class AgentChangePayload: Codable {
        public var agentId: String

        public enum CodingKeys: String, CodingKey {
            case agentId = "agent_id"
        }

        public init(agentId: String) {
            self.agentId = agentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            agentId = try container.decode(String.self, forKey: .agentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(agentId, forKey: .agentId)
        }
    }
}
