

import Foundation
public extension PlatformClient {
    /*
         Model: FulfillingStoreMeta
         Used By: Order
     */

    class FulfillingStoreMeta: Codable {
        public var additionalContactDetails: AdditionalContactDetails?

        public var documents: Documents?

        public var gstNumber: String?

        public var displayName: String?

        public var productReturnConfig: ProductReturnConfig?

        public var allowDpAssignmentFromFynd: Bool?

        public var stage: String?

        public var timing: Timing?

        public enum CodingKeys: String, CodingKey {
            case additionalContactDetails = "additional_contact_details"

            case documents

            case gstNumber = "gst_number"

            case displayName = "display_name"

            case productReturnConfig = "product_return_config"

            case allowDpAssignmentFromFynd = "allow_dp_assignment_from_fynd"

            case stage

            case timing
        }

        public init(additionalContactDetails: AdditionalContactDetails? = nil, allowDpAssignmentFromFynd: Bool? = nil, displayName: String? = nil, documents: Documents? = nil, gstNumber: String? = nil, productReturnConfig: ProductReturnConfig? = nil, stage: String? = nil, timing: Timing? = nil) {
            self.additionalContactDetails = additionalContactDetails

            self.documents = documents

            self.gstNumber = gstNumber

            self.displayName = displayName

            self.productReturnConfig = productReturnConfig

            self.allowDpAssignmentFromFynd = allowDpAssignmentFromFynd

            self.stage = stage

            self.timing = timing
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                additionalContactDetails = try container.decode(AdditionalContactDetails.self, forKey: .additionalContactDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                documents = try container.decode(Documents.self, forKey: .documents)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstNumber = try container.decode(String.self, forKey: .gstNumber)

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
                productReturnConfig = try container.decode(ProductReturnConfig.self, forKey: .productReturnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allowDpAssignmentFromFynd = try container.decode(Bool.self, forKey: .allowDpAssignmentFromFynd)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                timing = try container.decode(Timing.self, forKey: .timing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(additionalContactDetails, forKey: .additionalContactDetails)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(gstNumber, forKey: .gstNumber)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)

            try? container.encodeIfPresent(allowDpAssignmentFromFynd, forKey: .allowDpAssignmentFromFynd)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(timing, forKey: .timing)
        }
    }
}
