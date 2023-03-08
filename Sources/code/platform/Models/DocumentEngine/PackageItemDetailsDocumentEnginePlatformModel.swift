

import Foundation

public extension PlatformClient.DocumentEngine {
    /*
         Model: PackageItemDetails
         Used By: DocumentEngine
     */

    class PackageItemDetails: Codable {
        public var jioCode: String

        public var itemName: String

        public var mrp: String

        public var countryOfOrigin: String

        public var bestBeforeDate: String

        public var ean: String

        public var packageDetails: [PackageDetails]

        public enum CodingKeys: String, CodingKey {
            case jioCode = "jio_code"

            case itemName = "item_name"

            case mrp

            case countryOfOrigin = "country_of_origin"

            case bestBeforeDate = "best_before_date"

            case ean

            case packageDetails = "package_details"
        }

        public init(bestBeforeDate: String, countryOfOrigin: String, ean: String, itemName: String, jioCode: String, mrp: String, packageDetails: [PackageDetails]) {
            self.jioCode = jioCode

            self.itemName = itemName

            self.mrp = mrp

            self.countryOfOrigin = countryOfOrigin

            self.bestBeforeDate = bestBeforeDate

            self.ean = ean

            self.packageDetails = packageDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            jioCode = try container.decode(String.self, forKey: .jioCode)

            itemName = try container.decode(String.self, forKey: .itemName)

            mrp = try container.decode(String.self, forKey: .mrp)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            bestBeforeDate = try container.decode(String.self, forKey: .bestBeforeDate)

            ean = try container.decode(String.self, forKey: .ean)

            packageDetails = try container.decode([PackageDetails].self, forKey: .packageDetails)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(jioCode, forKey: .jioCode)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(mrp, forKey: .mrp)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(bestBeforeDate, forKey: .bestBeforeDate)

            try? container.encodeIfPresent(ean, forKey: .ean)

            try? container.encodeIfPresent(packageDetails, forKey: .packageDetails)
        }
    }
}
