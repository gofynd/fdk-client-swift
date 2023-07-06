

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var id: String

        public var currency: String

        public var modifiedOn: String

        public var allStatus: [String]

        public var paymentId: String?

        public var paymentMode: String

        public var aggregatorPaymentObject: [String: Any]?

        public var refundObject: [String: Any]?

        public var currentStatus: String

        public var paymentModeIdentifier: String

        public var refundedBy: String

        public var collectedBy: String

        public var amountInPaisa: String

        public var applicationId: String

        public var createdOn: String

        public var userObject: [String: Any]

        public var paymentGateway: String

        public var companyId: String

        public enum CodingKeys: String, CodingKey {
            case id

            case currency

            case modifiedOn = "modified_on"

            case allStatus = "all_status"

            case paymentId = "payment_id"

            case paymentMode = "payment_mode"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case refundObject = "refund_object"

            case currentStatus = "current_status"

            case paymentModeIdentifier = "payment_mode_identifier"

            case refundedBy = "refunded_by"

            case collectedBy = "collected_by"

            case amountInPaisa = "amount_in_paisa"

            case applicationId = "application_id"

            case createdOn = "created_on"

            case userObject = "user_object"

            case paymentGateway = "payment_gateway"

            case companyId = "company_id"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.id = id

            self.currency = currency

            self.modifiedOn = modifiedOn

            self.allStatus = allStatus

            self.paymentId = paymentId

            self.paymentMode = paymentMode

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.refundObject = refundObject

            self.currentStatus = currentStatus

            self.paymentModeIdentifier = paymentModeIdentifier

            self.refundedBy = refundedBy

            self.collectedBy = collectedBy

            self.amountInPaisa = amountInPaisa

            self.applicationId = applicationId

            self.createdOn = createdOn

            self.userObject = userObject

            self.paymentGateway = paymentGateway

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            currency = try container.decode(String.self, forKey: .currency)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            companyId = try container.decode(String.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var id: String

        public var currency: String

        public var modifiedOn: String

        public var allStatus: [String]

        public var paymentId: String?

        public var paymentMode: String

        public var aggregatorPaymentObject: [String: Any]?

        public var refundObject: [String: Any]?

        public var currentStatus: String

        public var paymentModeIdentifier: String

        public var refundedBy: String

        public var collectedBy: String

        public var amountInPaisa: String

        public var applicationId: String

        public var createdOn: String

        public var userObject: [String: Any]

        public var paymentGateway: String

        public var companyId: String

        public enum CodingKeys: String, CodingKey {
            case id

            case currency

            case modifiedOn = "modified_on"

            case allStatus = "all_status"

            case paymentId = "payment_id"

            case paymentMode = "payment_mode"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case refundObject = "refund_object"

            case currentStatus = "current_status"

            case paymentModeIdentifier = "payment_mode_identifier"

            case refundedBy = "refunded_by"

            case collectedBy = "collected_by"

            case amountInPaisa = "amount_in_paisa"

            case applicationId = "application_id"

            case createdOn = "created_on"

            case userObject = "user_object"

            case paymentGateway = "payment_gateway"

            case companyId = "company_id"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.id = id

            self.currency = currency

            self.modifiedOn = modifiedOn

            self.allStatus = allStatus

            self.paymentId = paymentId

            self.paymentMode = paymentMode

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.refundObject = refundObject

            self.currentStatus = currentStatus

            self.paymentModeIdentifier = paymentModeIdentifier

            self.refundedBy = refundedBy

            self.collectedBy = collectedBy

            self.amountInPaisa = amountInPaisa

            self.applicationId = applicationId

            self.createdOn = createdOn

            self.userObject = userObject

            self.paymentGateway = paymentGateway

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            currency = try container.decode(String.self, forKey: .currency)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            companyId = try container.decode(String.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
