

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var id: String

        public var quantity: Int

        public var fyndStoreId: String

        public var priceEffective: Double

        public var hsnCodeId: String

        public var sellerIdentifier: String

        public var storeId: Int

        public var affiliateStoreId: String

        public var affiliateMeta: [String: Any]

        public var transferPrice: Int

        public var modifiedOn: String

        public var pdfLinks: MarketPlacePdf?

        public var companyId: Int

        public var deliveryCharge: Double

        public var priceMarked: Double

        public var avlQty: Int

        public var identifier: [String: Any]

        public var unitPrice: Double

        public var itemId: Int

        public var amountPaid: Double

        public var itemSize: String

        public var sku: String

        public var discount: Double

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case quantity

            case fyndStoreId = "fynd_store_id"

            case priceEffective = "price_effective"

            case hsnCodeId = "hsn_code_id"

            case sellerIdentifier = "seller_identifier"

            case storeId = "store_id"

            case affiliateStoreId = "affiliate_store_id"

            case affiliateMeta = "affiliate_meta"

            case transferPrice = "transfer_price"

            case modifiedOn = "modified_on"

            case pdfLinks = "pdf_links"

            case companyId = "company_id"

            case deliveryCharge = "delivery_charge"

            case priceMarked = "price_marked"

            case avlQty = "avl_qty"

            case identifier

            case unitPrice = "unit_price"

            case itemId = "item_id"

            case amountPaid = "amount_paid"

            case itemSize = "item_size"

            case sku

            case discount
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.id = id

            self.quantity = quantity

            self.fyndStoreId = fyndStoreId

            self.priceEffective = priceEffective

            self.hsnCodeId = hsnCodeId

            self.sellerIdentifier = sellerIdentifier

            self.storeId = storeId

            self.affiliateStoreId = affiliateStoreId

            self.affiliateMeta = affiliateMeta

            self.transferPrice = transferPrice

            self.modifiedOn = modifiedOn

            self.pdfLinks = pdfLinks

            self.companyId = companyId

            self.deliveryCharge = deliveryCharge

            self.priceMarked = priceMarked

            self.avlQty = avlQty

            self.identifier = identifier

            self.unitPrice = unitPrice

            self.itemId = itemId

            self.amountPaid = amountPaid

            self.itemSize = itemSize

            self.sku = sku

            self.discount = discount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            quantity = try container.decode(Int.self, forKey: .quantity)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemId = try container.decode(Int.self, forKey: .itemId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            sku = try container.decode(String.self, forKey: .sku)

            discount = try container.decode(Double.self, forKey: .discount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(discount, forKey: .discount)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var id: String

        public var quantity: Int

        public var fyndStoreId: String

        public var priceEffective: Double

        public var hsnCodeId: String

        public var sellerIdentifier: String

        public var storeId: Int

        public var affiliateStoreId: String

        public var affiliateMeta: [String: Any]

        public var transferPrice: Int

        public var modifiedOn: String

        public var pdfLinks: MarketPlacePdf?

        public var companyId: Int

        public var deliveryCharge: Double

        public var priceMarked: Double

        public var avlQty: Int

        public var identifier: [String: Any]

        public var unitPrice: Double

        public var itemId: Int

        public var amountPaid: Double

        public var itemSize: String

        public var sku: String

        public var discount: Double

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case quantity

            case fyndStoreId = "fynd_store_id"

            case priceEffective = "price_effective"

            case hsnCodeId = "hsn_code_id"

            case sellerIdentifier = "seller_identifier"

            case storeId = "store_id"

            case affiliateStoreId = "affiliate_store_id"

            case affiliateMeta = "affiliate_meta"

            case transferPrice = "transfer_price"

            case modifiedOn = "modified_on"

            case pdfLinks = "pdf_links"

            case companyId = "company_id"

            case deliveryCharge = "delivery_charge"

            case priceMarked = "price_marked"

            case avlQty = "avl_qty"

            case identifier

            case unitPrice = "unit_price"

            case itemId = "item_id"

            case amountPaid = "amount_paid"

            case itemSize = "item_size"

            case sku

            case discount
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.id = id

            self.quantity = quantity

            self.fyndStoreId = fyndStoreId

            self.priceEffective = priceEffective

            self.hsnCodeId = hsnCodeId

            self.sellerIdentifier = sellerIdentifier

            self.storeId = storeId

            self.affiliateStoreId = affiliateStoreId

            self.affiliateMeta = affiliateMeta

            self.transferPrice = transferPrice

            self.modifiedOn = modifiedOn

            self.pdfLinks = pdfLinks

            self.companyId = companyId

            self.deliveryCharge = deliveryCharge

            self.priceMarked = priceMarked

            self.avlQty = avlQty

            self.identifier = identifier

            self.unitPrice = unitPrice

            self.itemId = itemId

            self.amountPaid = amountPaid

            self.itemSize = itemSize

            self.sku = sku

            self.discount = discount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            quantity = try container.decode(Int.self, forKey: .quantity)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemId = try container.decode(Int.self, forKey: .itemId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            sku = try container.decode(String.self, forKey: .sku)

            discount = try container.decode(Double.self, forKey: .discount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(discount, forKey: .discount)
        }
    }
}
