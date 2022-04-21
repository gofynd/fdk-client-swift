

import Foundation
public extension PlatformClient {
    /*
         Model: AppliedFilters
         Used By: Order
     */

    class AppliedFilters: Codable {
        public var stage: String?

        public var stores: [String]?

        public var deploymentStores: [String]?

        public var dp: [Int]?

        public var fromDate: String?

        public var toDate: String?

        public enum CodingKeys: String, CodingKey {
            case stage

            case stores

            case deploymentStores = "deployment_stores"

            case dp

            case fromDate = "from_date"

            case toDate = "to_date"
        }

        public init(deploymentStores: [String]? = nil, dp: [Int]? = nil, fromDate: String? = nil, stage: String? = nil, stores: [String]? = nil, toDate: String? = nil) {
            self.stage = stage

            self.stores = stores

            self.deploymentStores = deploymentStores

            self.dp = dp

            self.fromDate = fromDate

            self.toDate = toDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stores = try container.decode([String].self, forKey: .stores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deploymentStores = try container.decode([String].self, forKey: .deploymentStores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dp = try container.decode([Int].self, forKey: .dp)

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

            do {
                toDate = try container.decode(String.self, forKey: .toDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(stores, forKey: .stores)

            try? container.encodeIfPresent(deploymentStores, forKey: .deploymentStores)

            try? container.encodeIfPresent(dp, forKey: .dp)

            try? container.encodeIfPresent(fromDate, forKey: .fromDate)

            try? container.encodeIfPresent(toDate, forKey: .toDate)
        }
    }
}
