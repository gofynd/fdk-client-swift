

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceMarked: Double

        public var itemId: Int

        public var affiliateStoreId: String

        public var companyId: Int

        public var amountPaid: Double

        public var sku: String

        public var fyndStoreId: String

        public var quantity: Int

        public var unitPrice: Double

        public var deliveryCharge: Double

        public var pdfLinks: MarketPlacePdf?

        public var discount: Double

        public var sellerIdentifier: String

        public var avlQty: Int

        public var storeId: Int

        public var id: String

        public var identifier: [String: Any]

        public var priceEffective: Double

        public var transferPrice: Int

        public var itemSize: String

        public var affiliateMeta: [String: Any]

        public var modifiedOn: String

        public var hsnCodeId: String

        public enum CodingKeys: String, CodingKey {
            case priceMarked = "price_marked"

            case itemId = "item_id"

            case affiliateStoreId = "affiliate_store_id"

            case companyId = "company_id"

            case amountPaid = "amount_paid"

            case sku

            case fyndStoreId = "fynd_store_id"

            case quantity

            case unitPrice = "unit_price"

            case deliveryCharge = "delivery_charge"

            case pdfLinks = "pdf_links"

            case discount

            case sellerIdentifier = "seller_identifier"

            case avlQty = "avl_qty"

            case storeId = "store_id"

            case id = "_id"

            case identifier

            case priceEffective = "price_effective"

            case transferPrice = "transfer_price"

            case itemSize = "item_size"

            case affiliateMeta = "affiliate_meta"

            case modifiedOn = "modified_on"

            case hsnCodeId = "hsn_code_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceMarked = priceMarked

            self.itemId = itemId

            self.affiliateStoreId = affiliateStoreId

            self.companyId = companyId

            self.amountPaid = amountPaid

            self.sku = sku

            self.fyndStoreId = fyndStoreId

            self.quantity = quantity

            self.unitPrice = unitPrice

            self.deliveryCharge = deliveryCharge

            self.pdfLinks = pdfLinks

            self.discount = discount

            self.sellerIdentifier = sellerIdentifier

            self.avlQty = avlQty

            self.storeId = storeId

            self.id = id

            self.identifier = identifier

            self.priceEffective = priceEffective

            self.transferPrice = transferPrice

            self.itemSize = itemSize

            self.affiliateMeta = affiliateMeta

            self.modifiedOn = modifiedOn

            self.hsnCodeId = hsnCodeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemId = try container.decode(Int.self, forKey: .itemId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sku = try container.decode(String.self, forKey: .sku)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Double.self, forKey: .discount)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            storeId = try container.decode(Int.self, forKey: .storeId)

            id = try container.decode(String.self, forKey: .id)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)
        }
    }
}
