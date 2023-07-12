

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var companyId: String

        public var applicationId: String

        public var paymentGateway: String

        public var createdOn: String

        public var allStatus: [String]

        public var paymentMode: String

        public var id: String

        public var currency: String

        public var currentStatus: String

        public var userObject: [String: Any]

        public var refundObject: [String: Any]?

        public var refundedBy: String

        public var amountInPaisa: String

        public var modifiedOn: String

        public var paymentModeIdentifier: String

        public var aggregatorPaymentObject: [String: Any]?

        public var collectedBy: String

        public var paymentId: String?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case applicationId = "application_id"

            case paymentGateway = "payment_gateway"

            case createdOn = "created_on"

            case allStatus = "all_status"

            case paymentMode = "payment_mode"

            case id

            case currency

            case currentStatus = "current_status"

            case userObject = "user_object"

            case refundObject = "refund_object"

            case refundedBy = "refunded_by"

            case amountInPaisa = "amount_in_paisa"

            case modifiedOn = "modified_on"

            case paymentModeIdentifier = "payment_mode_identifier"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case collectedBy = "collected_by"

            case paymentId = "payment_id"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.companyId = companyId

            self.applicationId = applicationId

            self.paymentGateway = paymentGateway

            self.createdOn = createdOn

            self.allStatus = allStatus

            self.paymentMode = paymentMode

            self.id = id

            self.currency = currency

            self.currentStatus = currentStatus

            self.userObject = userObject

            self.refundObject = refundObject

            self.refundedBy = refundedBy

            self.amountInPaisa = amountInPaisa

            self.modifiedOn = modifiedOn

            self.paymentModeIdentifier = paymentModeIdentifier

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.collectedBy = collectedBy

            self.paymentId = paymentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(String.self, forKey: .companyId)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            id = try container.decode(String.self, forKey: .id)

            currency = try container.decode(String.self, forKey: .currency)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encode(paymentId, forKey: .paymentId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var companyId: String

        public var applicationId: String

        public var paymentGateway: String

        public var createdOn: String

        public var allStatus: [String]

        public var paymentMode: String

        public var id: String

        public var currency: String

        public var currentStatus: String

        public var userObject: [String: Any]

        public var refundObject: [String: Any]?

        public var refundedBy: String

        public var amountInPaisa: String

        public var modifiedOn: String

        public var paymentModeIdentifier: String

        public var aggregatorPaymentObject: [String: Any]?

        public var collectedBy: String

        public var paymentId: String?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case applicationId = "application_id"

            case paymentGateway = "payment_gateway"

            case createdOn = "created_on"

            case allStatus = "all_status"

            case paymentMode = "payment_mode"

            case id

            case currency

            case currentStatus = "current_status"

            case userObject = "user_object"

            case refundObject = "refund_object"

            case refundedBy = "refunded_by"

            case amountInPaisa = "amount_in_paisa"

            case modifiedOn = "modified_on"

            case paymentModeIdentifier = "payment_mode_identifier"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case collectedBy = "collected_by"

            case paymentId = "payment_id"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.companyId = companyId

            self.applicationId = applicationId

            self.paymentGateway = paymentGateway

            self.createdOn = createdOn

            self.allStatus = allStatus

            self.paymentMode = paymentMode

            self.id = id

            self.currency = currency

            self.currentStatus = currentStatus

            self.userObject = userObject

            self.refundObject = refundObject

            self.refundedBy = refundedBy

            self.amountInPaisa = amountInPaisa

            self.modifiedOn = modifiedOn

            self.paymentModeIdentifier = paymentModeIdentifier

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.collectedBy = collectedBy

            self.paymentId = paymentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(String.self, forKey: .companyId)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            id = try container.decode(String.self, forKey: .id)

            currency = try container.decode(String.self, forKey: .currency)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encode(paymentId, forKey: .paymentId)
        }
    }
}
