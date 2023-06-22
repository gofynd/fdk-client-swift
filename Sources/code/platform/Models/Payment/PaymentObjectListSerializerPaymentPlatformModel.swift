

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var paymentId: String?

        public var refundObject: [String: Any]?

        public var currentStatus: String

        public var companyId: String

        public var amountInPaisa: String

        public var collectedBy: String

        public var refundedBy: String

        public var modifiedOn: String

        public var userObject: [String: Any]

        public var allStatus: [String]

        public var paymentGateway: String

        public var createdOn: String

        public var paymentMode: String

        public var paymentModeIdentifier: String

        public var currency: String

        public var aggregatorPaymentObject: [String: Any]?

        public var id: String

        public var applicationId: String

        public enum CodingKeys: String, CodingKey {
            case paymentId = "payment_id"

            case refundObject = "refund_object"

            case currentStatus = "current_status"

            case companyId = "company_id"

            case amountInPaisa = "amount_in_paisa"

            case collectedBy = "collected_by"

            case refundedBy = "refunded_by"

            case modifiedOn = "modified_on"

            case userObject = "user_object"

            case allStatus = "all_status"

            case paymentGateway = "payment_gateway"

            case createdOn = "created_on"

            case paymentMode = "payment_mode"

            case paymentModeIdentifier = "payment_mode_identifier"

            case currency

            case aggregatorPaymentObject = "aggregator_payment_object"

            case id

            case applicationId = "application_id"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.paymentId = paymentId

            self.refundObject = refundObject

            self.currentStatus = currentStatus

            self.companyId = companyId

            self.amountInPaisa = amountInPaisa

            self.collectedBy = collectedBy

            self.refundedBy = refundedBy

            self.modifiedOn = modifiedOn

            self.userObject = userObject

            self.allStatus = allStatus

            self.paymentGateway = paymentGateway

            self.createdOn = createdOn

            self.paymentMode = paymentMode

            self.paymentModeIdentifier = paymentModeIdentifier

            self.currency = currency

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.id = id

            self.applicationId = applicationId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

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

            companyId = try container.decode(String.self, forKey: .companyId)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            applicationId = try container.decode(String.self, forKey: .applicationId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var paymentId: String?

        public var refundObject: [String: Any]?

        public var currentStatus: String

        public var companyId: String

        public var amountInPaisa: String

        public var collectedBy: String

        public var refundedBy: String

        public var modifiedOn: String

        public var userObject: [String: Any]

        public var allStatus: [String]

        public var paymentGateway: String

        public var createdOn: String

        public var paymentMode: String

        public var paymentModeIdentifier: String

        public var currency: String

        public var aggregatorPaymentObject: [String: Any]?

        public var id: String

        public var applicationId: String

        public enum CodingKeys: String, CodingKey {
            case paymentId = "payment_id"

            case refundObject = "refund_object"

            case currentStatus = "current_status"

            case companyId = "company_id"

            case amountInPaisa = "amount_in_paisa"

            case collectedBy = "collected_by"

            case refundedBy = "refunded_by"

            case modifiedOn = "modified_on"

            case userObject = "user_object"

            case allStatus = "all_status"

            case paymentGateway = "payment_gateway"

            case createdOn = "created_on"

            case paymentMode = "payment_mode"

            case paymentModeIdentifier = "payment_mode_identifier"

            case currency

            case aggregatorPaymentObject = "aggregator_payment_object"

            case id

            case applicationId = "application_id"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.paymentId = paymentId

            self.refundObject = refundObject

            self.currentStatus = currentStatus

            self.companyId = companyId

            self.amountInPaisa = amountInPaisa

            self.collectedBy = collectedBy

            self.refundedBy = refundedBy

            self.modifiedOn = modifiedOn

            self.userObject = userObject

            self.allStatus = allStatus

            self.paymentGateway = paymentGateway

            self.createdOn = createdOn

            self.paymentMode = paymentMode

            self.paymentModeIdentifier = paymentModeIdentifier

            self.currency = currency

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.id = id

            self.applicationId = applicationId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

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

            companyId = try container.decode(String.self, forKey: .companyId)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            applicationId = try container.decode(String.self, forKey: .applicationId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
        }
    }
}
