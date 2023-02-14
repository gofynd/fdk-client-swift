

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var itemSize: String

        public var deliveryCharge: Double

        public var fyndStoreId: String

        public var priceMarked: Double

        public var itemId: Int

        public var hsnCodeId: String

        public var identifier: [String: Any]

        public var transferPrice: Int

        public var pdfLinks: MarketPlacePdf?

        public var storeId: Int

        public var affiliateMeta: [String: Any]

        public var avlQty: Int

        public var affiliateStoreId: String

        public var unitPrice: Double

        public var amountPaid: Double

        public var id: String

        public var discount: Double

        public var priceEffective: Double

        public var sku: String

        public var quantity: Int

        public var sellerIdentifier: String

        public var modifiedOn: String

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case itemSize = "item_size"

            case deliveryCharge = "delivery_charge"

            case fyndStoreId = "fynd_store_id"

            case priceMarked = "price_marked"

            case itemId = "item_id"

            case hsnCodeId = "hsn_code_id"

            case identifier

            case transferPrice = "transfer_price"

            case pdfLinks = "pdf_links"

            case storeId = "store_id"

            case affiliateMeta = "affiliate_meta"

            case avlQty = "avl_qty"

            case affiliateStoreId = "affiliate_store_id"

            case unitPrice = "unit_price"

            case amountPaid = "amount_paid"

            case id = "_id"

            case discount

            case priceEffective = "price_effective"

            case sku

            case quantity

            case sellerIdentifier = "seller_identifier"

            case modifiedOn = "modified_on"

            case companyId = "company_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.itemSize = itemSize

            self.deliveryCharge = deliveryCharge

            self.fyndStoreId = fyndStoreId

            self.priceMarked = priceMarked

            self.itemId = itemId

            self.hsnCodeId = hsnCodeId

            self.identifier = identifier

            self.transferPrice = transferPrice

            self.pdfLinks = pdfLinks

            self.storeId = storeId

            self.affiliateMeta = affiliateMeta

            self.avlQty = avlQty

            self.affiliateStoreId = affiliateStoreId

            self.unitPrice = unitPrice

            self.amountPaid = amountPaid

            self.id = id

            self.discount = discount

            self.priceEffective = priceEffective

            self.sku = sku

            self.quantity = quantity

            self.sellerIdentifier = sellerIdentifier

            self.modifiedOn = modifiedOn

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemId = try container.decode(Int.self, forKey: .itemId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            id = try container.decode(String.self, forKey: .id)

            discount = try container.decode(Double.self, forKey: .discount)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sku = try container.decode(String.self, forKey: .sku)

            quantity = try container.decode(Int.self, forKey: .quantity)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
