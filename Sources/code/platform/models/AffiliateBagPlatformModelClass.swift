

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var companyId: Int

        public var itemSize: String

        public var affiliateMeta: [String: Any]

        public var modifiedOn: String

        public var avlQty: Int

        public var pdfLinks: MarketPlacePdf?

        public var sku: String

        public var id: String

        public var quantity: Int

        public var discount: Double

        public var sellerIdentifier: String

        public var priceEffective: Double

        public var storeId: Int

        public var amountPaid: Double

        public var hsnCodeId: String

        public var identifier: [String: Any]

        public var itemId: Int

        public var deliveryCharge: Double

        public var affiliateStoreId: String

        public var priceMarked: Double

        public var transferPrice: Int

        public var unitPrice: Double

        public var fyndStoreId: String

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case itemSize = "item_size"

            case affiliateMeta = "affiliate_meta"

            case modifiedOn = "modified_on"

            case avlQty = "avl_qty"

            case pdfLinks = "pdf_links"

            case sku

            case id = "_id"

            case quantity

            case discount

            case sellerIdentifier = "seller_identifier"

            case priceEffective = "price_effective"

            case storeId = "store_id"

            case amountPaid = "amount_paid"

            case hsnCodeId = "hsn_code_id"

            case identifier

            case itemId = "item_id"

            case deliveryCharge = "delivery_charge"

            case affiliateStoreId = "affiliate_store_id"

            case priceMarked = "price_marked"

            case transferPrice = "transfer_price"

            case unitPrice = "unit_price"

            case fyndStoreId = "fynd_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.companyId = companyId

            self.itemSize = itemSize

            self.affiliateMeta = affiliateMeta

            self.modifiedOn = modifiedOn

            self.avlQty = avlQty

            self.pdfLinks = pdfLinks

            self.sku = sku

            self.id = id

            self.quantity = quantity

            self.discount = discount

            self.sellerIdentifier = sellerIdentifier

            self.priceEffective = priceEffective

            self.storeId = storeId

            self.amountPaid = amountPaid

            self.hsnCodeId = hsnCodeId

            self.identifier = identifier

            self.itemId = itemId

            self.deliveryCharge = deliveryCharge

            self.affiliateStoreId = affiliateStoreId

            self.priceMarked = priceMarked

            self.transferPrice = transferPrice

            self.unitPrice = unitPrice

            self.fyndStoreId = fyndStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sku = try container.decode(String.self, forKey: .sku)

            id = try container.decode(String.self, forKey: .id)

            quantity = try container.decode(Int.self, forKey: .quantity)

            discount = try container.decode(Double.self, forKey: .discount)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            storeId = try container.decode(Int.self, forKey: .storeId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)
        }
    }
}
