

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var bankName: String

        public var beneficiaryId: String

        public var comment: Bool?

        public var accountHolder: String

        public var title: String

        public var mobile: Bool?

        public var transferMode: String

        public var createdOn: String

        public var address: String

        public var subtitle: String

        public var id: Int

        public var delightsUserName: String?

        public var email: String

        public var isActive: Bool

        public var branchName: Bool?

        public var ifscCode: String

        public var modifiedOn: String

        public var displayName: String

        public var accountNo: String

        public enum CodingKeys: String, CodingKey {
            case bankName = "bank_name"

            case beneficiaryId = "beneficiary_id"

            case comment

            case accountHolder = "account_holder"

            case title

            case mobile

            case transferMode = "transfer_mode"

            case createdOn = "created_on"

            case address

            case subtitle

            case id

            case delightsUserName = "delights_user_name"

            case email

            case isActive = "is_active"

            case branchName = "branch_name"

            case ifscCode = "ifsc_code"

            case modifiedOn = "modified_on"

            case displayName = "display_name"

            case accountNo = "account_no"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool? = nil, comment: Bool? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.bankName = bankName

            self.beneficiaryId = beneficiaryId

            self.comment = comment

            self.accountHolder = accountHolder

            self.title = title

            self.mobile = mobile

            self.transferMode = transferMode

            self.createdOn = createdOn

            self.address = address

            self.subtitle = subtitle

            self.id = id

            self.delightsUserName = delightsUserName

            self.email = email

            self.isActive = isActive

            self.branchName = branchName

            self.ifscCode = ifscCode

            self.modifiedOn = modifiedOn

            self.displayName = displayName

            self.accountNo = accountNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bankName = try container.decode(String.self, forKey: .bankName)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            do {
                comment = try container.decode(Bool.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            title = try container.decode(String.self, forKey: .title)

            do {
                mobile = try container.decode(Bool.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferMode = try container.decode(String.self, forKey: .transferMode)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            address = try container.decode(String.self, forKey: .address)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            id = try container.decode(Int.self, forKey: .id)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                branchName = try container.decode(Bool.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            displayName = try container.decode(String.self, forKey: .displayName)

            accountNo = try container.decode(String.self, forKey: .accountNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
        }
    }
}
