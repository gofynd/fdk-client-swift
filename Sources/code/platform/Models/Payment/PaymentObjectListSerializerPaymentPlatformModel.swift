

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var currency: String

        public var paymentGateway: String

        public var allStatus: [String]

        public var paymentMode: String

        public var refundedBy: String

        public var aggregatorPaymentObject: [String: Any]?

        public var refundObject: [String: Any]?

        public var amountInPaisa: String

        public var paymentModeIdentifier: String

        public var userObject: [String: Any]

        public var currentStatus: String

        public var paymentId: String?

        public var companyId: String

        public var collectedBy: String

        public var createdOn: String

        public var modifiedOn: String

        public var id: String

        public var applicationId: String

        public enum CodingKeys: String, CodingKey {
            case currency

            case paymentGateway = "payment_gateway"

            case allStatus = "all_status"

            case paymentMode = "payment_mode"

            case refundedBy = "refunded_by"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case refundObject = "refund_object"

            case amountInPaisa = "amount_in_paisa"

            case paymentModeIdentifier = "payment_mode_identifier"

            case userObject = "user_object"

            case currentStatus = "current_status"

            case paymentId = "payment_id"

            case companyId = "company_id"

            case collectedBy = "collected_by"

            case createdOn = "created_on"

            case modifiedOn = "modified_on"

            case id

            case applicationId = "application_id"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.currency = currency

            self.paymentGateway = paymentGateway

            self.allStatus = allStatus

            self.paymentMode = paymentMode

            self.refundedBy = refundedBy

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.refundObject = refundObject

            self.amountInPaisa = amountInPaisa

            self.paymentModeIdentifier = paymentModeIdentifier

            self.userObject = userObject

            self.currentStatus = currentStatus

            self.paymentId = paymentId

            self.companyId = companyId

            self.collectedBy = collectedBy

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn

            self.id = id

            self.applicationId = applicationId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currency = try container.decode(String.self, forKey: .currency)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

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

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(String.self, forKey: .companyId)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            id = try container.decode(String.self, forKey: .id)

            applicationId = try container.decode(String.self, forKey: .applicationId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

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
        public var currency: String

        public var paymentGateway: String

        public var allStatus: [String]

        public var paymentMode: String

        public var refundedBy: String

        public var aggregatorPaymentObject: [String: Any]?

        public var refundObject: [String: Any]?

        public var amountInPaisa: String

        public var paymentModeIdentifier: String

        public var userObject: [String: Any]

        public var currentStatus: String

        public var paymentId: String?

        public var companyId: String

        public var collectedBy: String

        public var createdOn: String

        public var modifiedOn: String

        public var id: String

        public var applicationId: String

        public enum CodingKeys: String, CodingKey {
            case currency

            case paymentGateway = "payment_gateway"

            case allStatus = "all_status"

            case paymentMode = "payment_mode"

            case refundedBy = "refunded_by"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case refundObject = "refund_object"

            case amountInPaisa = "amount_in_paisa"

            case paymentModeIdentifier = "payment_mode_identifier"

            case userObject = "user_object"

            case currentStatus = "current_status"

            case paymentId = "payment_id"

            case companyId = "company_id"

            case collectedBy = "collected_by"

            case createdOn = "created_on"

            case modifiedOn = "modified_on"

            case id

            case applicationId = "application_id"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.currency = currency

            self.paymentGateway = paymentGateway

            self.allStatus = allStatus

            self.paymentMode = paymentMode

            self.refundedBy = refundedBy

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.refundObject = refundObject

            self.amountInPaisa = amountInPaisa

            self.paymentModeIdentifier = paymentModeIdentifier

            self.userObject = userObject

            self.currentStatus = currentStatus

            self.paymentId = paymentId

            self.companyId = companyId

            self.collectedBy = collectedBy

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn

            self.id = id

            self.applicationId = applicationId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currency = try container.decode(String.self, forKey: .currency)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

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

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(String.self, forKey: .companyId)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            id = try container.decode(String.self, forKey: .id)

            applicationId = try container.decode(String.self, forKey: .applicationId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
        }
    }
}
