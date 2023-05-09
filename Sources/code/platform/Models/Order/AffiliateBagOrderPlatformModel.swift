

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sku: String

        public var quantity: Int

        public var discount: Double

        public var sellerIdentifier: String

        public var priceMarked: Double

        public var pdfLinks: MarketPlacePdf?

        public var deliveryCharge: Double

        public var priceEffective: Double

        public var fyndStoreId: String

        public var modifiedOn: String

        public var companyId: Int

        public var transferPrice: Int

        public var affiliateMeta: [String: Any]

        public var amountPaid: Double

        public var avlQty: Int

        public var storeId: Int

        public var hsnCodeId: String

        public var itemId: Int

        public var identifier: [String: Any]

        public var id: String

        public var unitPrice: Double

        public var affiliateStoreId: String

        public var itemSize: String

        public enum CodingKeys: String, CodingKey {
            case sku

            case quantity

            case discount

            case sellerIdentifier = "seller_identifier"

            case priceMarked = "price_marked"

            case pdfLinks = "pdf_links"

            case deliveryCharge = "delivery_charge"

            case priceEffective = "price_effective"

            case fyndStoreId = "fynd_store_id"

            case modifiedOn = "modified_on"

            case companyId = "company_id"

            case transferPrice = "transfer_price"

            case affiliateMeta = "affiliate_meta"

            case amountPaid = "amount_paid"

            case avlQty = "avl_qty"

            case storeId = "store_id"

            case hsnCodeId = "hsn_code_id"

            case itemId = "item_id"

            case identifier

            case id = "_id"

            case unitPrice = "unit_price"

            case affiliateStoreId = "affiliate_store_id"

            case itemSize = "item_size"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sku = sku

            self.quantity = quantity

            self.discount = discount

            self.sellerIdentifier = sellerIdentifier

            self.priceMarked = priceMarked

            self.pdfLinks = pdfLinks

            self.deliveryCharge = deliveryCharge

            self.priceEffective = priceEffective

            self.fyndStoreId = fyndStoreId

            self.modifiedOn = modifiedOn

            self.companyId = companyId

            self.transferPrice = transferPrice

            self.affiliateMeta = affiliateMeta

            self.amountPaid = amountPaid

            self.avlQty = avlQty

            self.storeId = storeId

            self.hsnCodeId = hsnCodeId

            self.itemId = itemId

            self.identifier = identifier

            self.id = id

            self.unitPrice = unitPrice

            self.affiliateStoreId = affiliateStoreId

            self.itemSize = itemSize
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sku = try container.decode(String.self, forKey: .sku)

            quantity = try container.decode(Int.self, forKey: .quantity)

            discount = try container.decode(Double.self, forKey: .discount)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            companyId = try container.decode(Int.self, forKey: .companyId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            storeId = try container.decode(Int.self, forKey: .storeId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            id = try container.decode(String.self, forKey: .id)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sku: String

        public var quantity: Int

        public var discount: Double

        public var sellerIdentifier: String

        public var priceMarked: Double

        public var pdfLinks: MarketPlacePdf?

        public var deliveryCharge: Double

        public var priceEffective: Double

        public var fyndStoreId: String

        public var modifiedOn: String

        public var companyId: Int

        public var transferPrice: Int

        public var affiliateMeta: [String: Any]

        public var amountPaid: Double

        public var avlQty: Int

        public var storeId: Int

        public var hsnCodeId: String

        public var itemId: Int

        public var identifier: [String: Any]

        public var id: String

        public var unitPrice: Double

        public var affiliateStoreId: String

        public var itemSize: String

        public enum CodingKeys: String, CodingKey {
            case sku

            case quantity

            case discount

            case sellerIdentifier = "seller_identifier"

            case priceMarked = "price_marked"

            case pdfLinks = "pdf_links"

            case deliveryCharge = "delivery_charge"

            case priceEffective = "price_effective"

            case fyndStoreId = "fynd_store_id"

            case modifiedOn = "modified_on"

            case companyId = "company_id"

            case transferPrice = "transfer_price"

            case affiliateMeta = "affiliate_meta"

            case amountPaid = "amount_paid"

            case avlQty = "avl_qty"

            case storeId = "store_id"

            case hsnCodeId = "hsn_code_id"

            case itemId = "item_id"

            case identifier

            case id = "_id"

            case unitPrice = "unit_price"

            case affiliateStoreId = "affiliate_store_id"

            case itemSize = "item_size"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sku = sku

            self.quantity = quantity

            self.discount = discount

            self.sellerIdentifier = sellerIdentifier

            self.priceMarked = priceMarked

            self.pdfLinks = pdfLinks

            self.deliveryCharge = deliveryCharge

            self.priceEffective = priceEffective

            self.fyndStoreId = fyndStoreId

            self.modifiedOn = modifiedOn

            self.companyId = companyId

            self.transferPrice = transferPrice

            self.affiliateMeta = affiliateMeta

            self.amountPaid = amountPaid

            self.avlQty = avlQty

            self.storeId = storeId

            self.hsnCodeId = hsnCodeId

            self.itemId = itemId

            self.identifier = identifier

            self.id = id

            self.unitPrice = unitPrice

            self.affiliateStoreId = affiliateStoreId

            self.itemSize = itemSize
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sku = try container.decode(String.self, forKey: .sku)

            quantity = try container.decode(Int.self, forKey: .quantity)

            discount = try container.decode(Double.self, forKey: .discount)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            companyId = try container.decode(Int.self, forKey: .companyId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            storeId = try container.decode(Int.self, forKey: .storeId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            id = try container.decode(String.self, forKey: .id)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)
        }
    }
}
